import { Component, ElementRef, ViewChild } from '@angular/core';
import { MenuItem } from 'primeng/api';
import { LayoutService } from "./service/app.layout.service";
import { AuthService } from '../demo/service/auth.service'; // Asegúrate de ajustar la ruta según tu estructura de carpetas
import { Router } from '@angular/router';

@Component({
    selector: 'app-topbar',
    templateUrl: './app.topbar.component.html'
})
export class AppTopBarComponent {
    items!: MenuItem[];
    
    @ViewChild('menubutton') menuButton!: ElementRef;
    @ViewChild('topbarmenubutton') topbarMenuButton!: ElementRef;
    @ViewChild('topbarmenu') menu!: ElementRef;

    constructor(public layoutService: LayoutService, private auth: AuthService, private router: Router) { }

    fnLogout() {
        this.auth.logout(); // Llama al método de cerrar sesión en tu AuthService
        this.router.navigate(['/']); // Redirige a la página de inicio de sesión
    }
}
