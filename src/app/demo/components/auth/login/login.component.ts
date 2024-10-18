import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/demo/service/auth.service';
import { LayoutService } from 'src/app/layout/service/app.layout.service';
import Swal from 'sweetalert2'

@Component({
    selector: 'app-login',
    templateUrl: './login.component.html',
    styles: [`
        :host ::ng-deep .pi-eye,
        :host ::ng-deep .pi-eye-slash {
            transform:scale(1.6);
            margin-right: 1rem;
            color: var(--primary-color) !important;
        }
    `]
})
export class LoginComponent implements OnInit{
    loginForm!:FormGroup;
    valCheck: string[] = ['remember'];

    password!: string;

    constructor(public layoutService: LayoutService,private fb:FormBuilder,private auth:AuthService,private router:Router) { }

    ngOnInit(): void {
        this.loginForm = this.fb.group({
          strUser:['',Validators.required],
          strPassword:['',Validators.required]
        })
      }

      fnOnLogin() {
        if (this.loginForm.valid) { 
               
          this.auth.fnlogin(this.loginForm.value).subscribe({
            next: (res: any) => {
              if (res.success == true) {
                let timerInterval;
                localStorage.setItem('token', res.token);
                Swal.fire({
                  title: "Loggin In",
                  html: "It will close automatically <b></b> miliseconds.",
                  timer: 2000,
                  timerProgressBar: true,
                  didOpen: () => {
                    Swal.showLoading();
                    const popup = Swal.getPopup();
                    if (popup) {
                      const timer = popup.querySelector("b");
                      if (timer) {
                        const timerInterval = setInterval(() => {
                          timer.textContent = `${Swal.getTimerLeft()}`;
                        }, 100);
                        return timerInterval;
                      }
                    }
                    return null;
                  },
                 
                }).then((result) => {
                  if (result.dismiss === Swal.DismissReason.timer) {
                    this.loginForm.reset();
                    // this.router.navigate(['/dashboard'])
                    this.auth.getDashboard().subscribe({
                    next: (dashboardRes) => {
                    if (dashboardRes.success == true) {
                      this.router.navigate([dashboardRes.redirectTo]);
                    }
                  },
                  error: (err) => {
                    console.error(err);
                    Swal.fire({
                      position: "center",
                      icon: "error",
                      title: "Error fetching dashboard",
                      showConfirmButton: false,
                      timer: 1500
                    });
                  }
                });
              }
            });
          } else {
                // Inicio de sesión fallido
                Swal.fire({ 
                  position: "center",
                  icon: "error",
                  title: "Invalid Session",
                  showConfirmButton: false,
                  timer: 1500
                });
                this.loginForm.reset();
                
              }
            },
            error: (err) => {
              Swal.fire({ 
                position: "center",
                icon: "error",
                title: "Invalid Session",
                showConfirmButton: false,
                timer: 1500
              });
              this.loginForm.reset();
            }
          });
        } else {
          // Manejar caso en que el formulario no es válido
          this.validateAllFormsFields(this.loginForm);
          Swal.fire({ 
            position: "center",
            icon: "error",
            title: "Invalid Session",
            showConfirmButton: false,
            timer: 1500
          });
        }
      }

      private validateAllFormsFields(formGroup:FormGroup){
        Object.keys(formGroup.controls).forEach(field=>{
          const control = formGroup.get(field);
          if(control instanceof FormControl){
            control.markAsDirty({onlySelf:true});
          }
          else if(control instanceof FormGroup){
            this.validateAllFormsFields(control)
          }
        })
      }
}
