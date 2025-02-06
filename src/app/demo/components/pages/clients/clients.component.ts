import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/demo/models/product';
import { MessageService } from 'primeng/api';
import { Table } from 'primeng/table';
import { ClientsService } from 'src/app/demo/service/clients.service';
import { Clients, Clients1 } from 'src/app/demo/models/clientsModels';
import { UsersService } from 'src/app/demo/service/users.service';
import Swal from 'sweetalert2'
import { asRoughMinutes } from '@fullcalendar/core/internal';
import { TableModule } from 'primeng/table';
import { InputGroupModule } from 'primeng/inputgroup';
import { InputGroupAddonModule } from 'primeng/inputgroupaddon';

@Component({
    templateUrl: './clients.component.html',
    providers: [MessageService]
})
export class ClientsComponent implements OnInit {
   
// Array to hold the list of users

clients: Clients[] = [];

// Object to represent a single user
//user: Users = {};
client: Clients[] = [];

clients1: Clients1[] = [];
client1: Clients1 = {};


// Variable to hold a string representation of an employee (may be used for searching or filtering)
strClient: any;


// Flag to control the visibility of the employee update dialog
clientViewDialog: boolean = false;




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
   

    constructor(private clientsService: ClientsService, private messageService: MessageService,private usersService: UsersService) { }

    ngOnInit() {
        //  this.usersService.listEmpleados1().then(data => this.users = data);
          this.fnlistClients(); 

         
    }

    fnlistClients () {
        this.clientsService.listClients().subscribe(
           (res:any) => {
          //   this.user= res[0];
          // //  console.log(res);
      
          // }, error => {
          //   console.log(error);
          // }
          if (Array.isArray(res)) {
            this.client = res[0]; // Asegúrate de que response sea un array
        } else {
            console.error('Respuesta no válida:', res);
            this.client = []; // Maneja el error adecuadamente
        }
      } 
        );
      }

      fnViewClient(select: any) {
        this.client1.strFullName = select.strFullName;  
        this.client1.strLastName = select.strLastName;  
        this.client1.strPhone = select.strPhone;
        this.client1.strEmail = select.strEmail;
        this.client1.strAdress = select.strAdress;
        this.client1.strReferences = select.strReferences;
        this.client1.strPaymentMethod = select.strPaymentMethod;
        this.client1.intCP = select.intCP;
       // this.client1.s = select.intCity;
        this.client1.strCityName = select.strCityName;
        this.client1.datDate = select.datDate;
        this.clientViewDialog = true;
    }

    //   openViewClient() {
      
    //     this.submitted = false;
    //     this.clientViewDialog = true;
    // }

    hideemployeeUpdateDialog() {
        this.clientViewDialog = false;
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
