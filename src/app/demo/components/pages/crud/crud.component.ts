import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/demo/models/product';
import { MessageService } from 'primeng/api';
import { Table } from 'primeng/table';
import { ProductService } from 'src/app/demo/service/product.service';
import { Users, Users1 } from 'src/app/demo/models/usersModels';
import { UsersService } from 'src/app/demo/service/users.service';
import Swal from 'sweetalert2'
import { asRoughMinutes } from '@fullcalendar/core/internal';

@Component({
    templateUrl: './crud.component.html',
    providers: [MessageService]
})
export class CrudComponent implements OnInit {
    users:Users[]=[];
    user: Users = {};

    users1:Users1[]=[];
    user1: Users1 = {};
    // selectEmpleados:Users = new Users();
    modalService: any;
    //listPuestosR:any=[];
    strEmpleado:any;
    listPuestoR: any[] = [];

    userDialog: boolean = false;

    productDialog: boolean = false;

    deleteProductDialog: boolean = false;

    deleteProductsDialog: boolean = false;

    products: Product[] = [];

    product: Product = {};

    selectedProducts: Product[] = [];

    submitted: boolean = false;

    cols: any[] = [];

    statuses: any[] = [];

    rowsPerPageOptions = [5, 10, 20];

    constructor(private productService: ProductService, private messageService: MessageService,private usersService: UsersService) { }

    ngOnInit() {
        //  this.usersService.listEmpleados1().then(data => this.users = data);
         this.fnlistEmpleados(); 
         this.fnPuestosR();
        // this.cols = [
        //     { field: 'strEmpleado', header: 'Empleado' },
        //     { field: 'strNombre', header: 'Nombre' },
        //     { field: 'strPuesto', header: 'Puesto' },
        //     { field: 'strTelefono', header: 'Telefono' },
        //     { field: 'strEmail', header: 'Correo' }
            
        // ];


    }

    fnlistEmpleados () {
        this.usersService.listEmpleados().subscribe(
          res => {
           this.user= res;
            console.log(res);
      
          }, error => {
            console.log(error);
          }
          
        );
      }
      
      fnPuestosR(){
        this.usersService.listPuestosR().subscribe(
          res => {
            this.listPuestoR=res;
            console.log(res);
          }, error => {
            console.log(error);
          }     
        );
          }

          fnAddEmpleados(empleados:Users1):void{
            // alert("entro")
             this.usersService.addEmpleados(empleados).subscribe(
               res=>{
               if(res){
                this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Empleado Creado', life: 3000 });
                 console.log(res);
                 this.fnClear();
                 this.fnlistEmpleados();
               }
               else{
                 alert("Error")
               }
             });
           }
         
           fnClear(){
             this.user.strEmpleado='';
             this.user.strNombre='';
             this.user.strTelefono='';
             this.user.strEmail='';
             this.user.strPuesto='';
             this.user.intPuesto=0;
           }
         
           fnUpdateEmpleado(select:any)
           {
            this.user1.strEmpleado = select.strEmpleado;
            this.user1.strNombre = select.strNombre;
            this.user1.strTelefono = select.strTelefono;
            this.user1.strEmail = select.strEmail;    
            this.user1.intPuesto = select.intPuesto;
            this.user1.strEstatus = select.strEstatus;    
            this.userDialog = true;
           
           }
         
           fnUpdateEmpleados(empleados:Users1):void{
             // alert("entro")
              this.usersService.updateEmpleados(empleados).subscribe(
                res=>{
                
                if(res){
                  this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Empleado Actualizado', life: 3000 });
                  console.log(res);
                  
                  this.fnlistEmpleados();
                }
                else{
                  alert("Error")
                }
              });
            }

    openNew() {
        this.user1 = {};
        this.submitted = false;
        this.productDialog = true;
    }

    editProduct(product: Product) {
        this.product = { ...product };
        this.productDialog = true;
    }

    deleteProduct(product: Product) {
        this.deleteProductDialog = true;
        this.product = { ...product };
    }

    confirmDeleteSelected() {
        this.deleteProductsDialog = false;
        this.products = this.products.filter(val => !this.selectedProducts.includes(val));
        this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Products Deleted', life: 3000 });
        this.selectedProducts = [];
    }

    confirmDelete() {
        this.deleteProductDialog = false;
        this.products = this.products.filter(val => val.id !== this.product.id);
        this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Product Deleted', life: 3000 });
        this.product = {};
    }

    hideDialog() {
        this.user1 = {};
        this.productDialog = false;
        this.submitted = false;
    }

    hideUserDialog() {
        this.user1 = {};
        this.userDialog = false;
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
        for (let i = 0; i < this.products.length; i++) {
            if (this.products[i].id === id) {
                index = i;
                break;
            }
        }

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
