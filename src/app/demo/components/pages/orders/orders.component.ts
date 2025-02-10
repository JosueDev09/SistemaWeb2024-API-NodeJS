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
    templateUrl: './orders.component.html',
    providers: [MessageService]
})
export class OrdersComponent implements OnInit {
   
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


// Flag to control the visibility of the employee update dialog


// Flag to control the visibility of the employee list dialog
ordersDialog: boolean = false;

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
       
    }

    openNew() {
        this.user1 = {};
        this.submitted = false;
        this.ordersDialog = true;
    }


    hideAddDialog() {
        this.user1 = {};
        this.ordersDialog = false;
        this.submitted = false;
    }


    

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
