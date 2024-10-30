import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/demo/models/product';
import { MessageService } from 'primeng/api';
import { Table } from 'primeng/table';
import { ProductService } from 'src/app/demo/service/product.service';
import { Users, Users1 } from 'src/app/demo/models/usersModels';
import { UsersService } from 'src/app/demo/service/users.service';
import Swal from 'sweetalert2'
import { asRoughMinutes } from '@fullcalendar/core/internal';
import { TableModule } from 'primeng/table';

@Component({
    templateUrl: './crud.component.html',
    providers: [MessageService]
})
export class CrudComponent implements OnInit {
   
// Array to hold the list of users

users: Users[] = [];

// Object to represent a single user
//user: Users = {};
user: Users[] = [];

// Array to hold the list of user roles or additional user information
users1: Users1[] = [];

// Object to represent a single user role or additional information
user1: Users1 = {};

// Variable to hold a string representation of an employee (may be used for searching or filtering)
strEmpleado: any;

// Array to hold positions or roles associated with employees
listPuestoR: any[] = [];

// Flag to control the visibility of the employee update dialog
employeeUpdateDialog: boolean = false;

// Flag to control the visibility of the employee list dialog
employeesDialog: boolean = false;

// Flag to control the visibility of the product deletion confirmation dialog
deleteProductDialog: boolean = false;

// Flag to control the visibility of the bulk product deletion confirmation dialog
deleteProductsDialog: boolean = false;

// Array to hold selected products for operations like deletion
selectedProducts: Product[] = [];

// Flag to indicate if a form has been submitted
submitted: boolean = false;

// Array to define the columns of a table or grid
cols: any[] = [];

// Array to hold different status options (e.g., active, inactive)
statuses: any[] = [];

// Options for the number of rows to display per page in a paginated view
rowsPerPageOptions = [5, 10, 20];
   

    constructor(private productService: ProductService, private messageService: MessageService,private usersService: UsersService) { }

    ngOnInit() {
        //  this.usersService.listEmpleados1().then(data => this.users = data);
          this.fnlistEmployees(); 
          this.fnListRol();
        // this.cols = [
        //     { field: 'strEmpleado', header: 'Empleado' },
        //     { field: 'strNombre', header: 'Nombre' },
        //     { field: 'strPuesto', header: 'Puesto' },
        //     { field: 'strTelefono', header: 'Telefono' },
        //     { field: 'strEmail', header: 'Correo' }
            
        // ];


    }

    fnlistEmployees () {
        this.usersService.listEmployees().subscribe(
           (res:any) => {
          //   this.user= res[0];
          // //  console.log(res);
      
          // }, error => {
          //   console.log(error);
          // }
          if (Array.isArray(res)) {
            this.user = res[0]; // Asegúrate de que response sea un array
        } else {
            console.error('Respuesta no válida:', res);
            this.user = []; // Maneja el error adecuadamente
        }
      } 
        );
      }
      
      fnListRol(){
        this.usersService.listRol().subscribe(
          res => {
            
            this.listPuestoR=res;
            console.log(res);
          }, error => {
            console.log(error);
          }     
        );
          }

          fnAddEmployees(employees:Users1):void{
            // alert("entro")
             this.usersService.addEmployees(employees).subscribe(
               res=>{
               if(res){
                this.messageService.add({ severity: 'success', summary: 'Succsesfully', detail: 'Created Employee', life: 3000 });
                 console.log(res);
                 this.fnClear();
                 this.fnlistEmployees();
               }
               else{
                 alert("Error")
               }
             });
           }
         
           fnClear(){
             this.user1.FullName='';
             this.user1.strNombre='';
             this.user1.phone='';
             this.user1.email='';
           //  this.user1.strRolName='';
             this.user1.intRolId=0;
           }
         
           fnUpdateEmployee(select:any)
           {
            this.user1.intUser = select.intUser;
            this.user1.FullName = select.FullName;
            this.user1.phone = select.phone;
            this.user1.email = select.email;    
            this.user1.intRolId = select.intRolId;
            // this.user1.strRolName = select.strRolName;
            this.user1.intEstatus = select.intEstatus;    
            this.employeeUpdateDialog = true;
           
           }
         
           fnUpdateEmployees(employees:Users1):void{
             // alert("entro")
              this.usersService.updateEmployees(employees).subscribe(
                res=>{
                
                if(res){
                  this.messageService.add({ severity: 'success', summary: 'Succsesfully', detail: 'Employee Updated', life: 3000 });
                  console.log(res);
                  
                  this.fnlistEmployees();
                }
                else{
                  alert("Error")
                }
              });
            }

    openNew() {
        this.user1 = {};
        this.submitted = false;
        this.employeesDialog = true;
    }

    // editEmployee(product: Product) {
    //   //  this.product = { ...product };
    //     this.employeesDialog = true;
    // }

    // deleteProduct(product: Product) {
    //     this.deleteProductDialog = true;
    //    // this.product = { ...product };
    // }

    confirmDeleteSelected() {
        this.deleteProductsDialog = false;
       // this.products = this.products.filter(val => !this.selectedProducts.includes(val));
        this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Products Deleted', life: 3000 });
        this.selectedProducts = [];
    }

    confirmDelete() {
        this.deleteProductDialog = false;
        //this.products = this.products.filter(val => val.id !== this.product.id);
        this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Product Deleted', life: 3000 });
       // this.product = {};
    }

    hideAddDialog() {
        this.user1 = {};
        this.employeesDialog = false;
        this.submitted = false;
    }

    hideemployeeUpdateDialog() {
        this.user1 = {};
        this.employeeUpdateDialog = false;
        this.submitted = false;
    }

    // saveProduct() {
    //     this.submitted = true;

    //     if (this.user.strEmpleado?.trim()) {
    //         if (this.product.id) {
    //             @ts-ignore
    //             this.product.inventoryStatus = this.product.inventoryStatus.value ? this.product.inventoryStatus.value : this.product.inventoryStatus;
    //             this.products[this.findIndexById(this.product.id)] = this.product;
    //             this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Product Updated', life: 3000 });
    //         } else {
    //             this.product.id = this.createId();
    //             this.product.code = this.createId();
    //             this.product.image = 'product-placeholder.svg';
    //             @ts-ignore
    //             this.product.inventoryStatus = this.product.inventoryStatus ? this.product.inventoryStatus.value : 'INSTOCK';
    //             this.products.push(this.product);
    //             this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Product Created', life: 3000 });
    //         }

    //         this.user = [...this.user];
    //         this.productDialog = false;
    //         this.user = {};
    //     }
    // }

    findIndexById(id: string): number {
        let index = -1;
        // for (let i = 0; i < this.products.length; i++) {
        //     if (this.products[i].id === id) {
        //         index = i;
        //         break;
        //     }
        // }

        return index;
    }

    createId(): string {
        let id = '';
        const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        for (let i = 0; i < 5; i++) {
            id += chars.charAt(Math.floor(Math.random() * chars.length));
        }
        return id;
    }

    onGlobalFilter(table: Table, event: Event) {
        table.filterGlobal((event.target as HTMLInputElement).value, 'contains');
    }
}
