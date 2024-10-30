import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/demo/models/product';
import { MessageService } from 'primeng/api';
import { Table } from 'primeng/table';
import { ProductService } from 'src/app/demo/service/product.service';
import { Categorias, Categorias1 } from 'src/app/demo/models/categoriasModels';
import { CategoriasService } from 'src/app/demo/service/categorias.service';
import { SubCategorias, SubCategorias1 } from 'src/app/demo/models/subCategorias.Models';

@Component({
    templateUrl: './categorias.component.html',
    providers: [MessageService]
})
export class CategoriasComponent implements OnInit {

    listCategoriasSub: any[] = []; //Manda a llamar la lista de categorias que esta guardada en la base de datos y los muestra en el select

    categoriaModal: boolean = false;

    subcategoriaModal:boolean =  false;

    subCategoriaAddModal:boolean = false;

    categoriaUpdateModal: boolean = false;

    deleteProductDialog: boolean = false;

    deleteProductsDialog: boolean = false;

    listSubCategorias: any[] = [];

    products: Product[] = [];

    product: Product[] = [];

    categorias: Categorias[] = [];

   // categoria: Categorias = {};

    categoria: Categorias[] = [];

    categorias1: Categorias1[] = [];

    categoria1: Categorias1 = {}; 

    subcategorias: SubCategorias[] = [];

    subcategoria: SubCategorias[] = [];
    
    subcategorias1: SubCategorias1[] = [];

    subcategoria1: SubCategorias1 = {};

    submitted: boolean = false;

    cols: any[] = [];

    statuses: any[] = [];

    rowsPerPageOptions = [5, 10, 20];

    constructor(private categoriasService: CategoriasService, private messageService: MessageService) { }

    ngOnInit() {
        this.fnlistCategorias();
    }

    fnlistCategorias () {
        this.categoriasService.listCategorias().subscribe(
          res => {
          //  this.categoria= res;
          //   console.log(res);
      
          // }, error => {
          //   console.log(error);
          // }
          if (Array.isArray(res)) {
            this.categoria = res[0]; // Asegúrate de que response sea un array
        } else {
            console.error('Respuesta no válida:', res);
            this.categoria = []; // Maneja el error adecuadamente
        }
        }
        );
      }

      fnAddCategorias(categoria:Categorias1):void{
        // alert("entro")
         this.categoriasService.addCategorias(categoria).subscribe(
           res=>{
           if(res){
            this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Categoria Creada', life: 3000 });
             console.log(res);
             this.fnClear();
             this.fnlistCategorias();
           }
           else{
             alert("Error")
           }
         });
       }
     
       fnClear(){
         this.categoria1.strNombreCategoria='';
         this.categoria1.strDescripcion='';        
       }

       fnUpdateCategorias(select:any)
       {
        this.categoria1.intCategorias = select.intCategorias;
        this.categoria1.strNombreCategoria = select.strNombreCategoria;
        this.categoria1.strDescripcion = select.strDescripcion;
        this.categoria1.strEstatus = select.strEstatus; 
        this.categoriaUpdateModal = true;
       
       }
     
       fnUpdateCategoria(categoria1:Categorias1):void{
         // alert("entro")
          this.categoriasService.updateCategorias(categoria1).subscribe(
            res=>{
            
            if(res){
              this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Categoria Actualizada', life: 3000 });
              console.log(res);
              
              this.fnlistCategorias();
            }
            else{
              alert("Error")
            }
          });
        }

        fnListCategoriasSub(){
          this.categoriasService.listCategoriasSub().subscribe(
              res => {
              //  this.listCategoriasSub= res;
              //   console.log(res);
                if (Array.isArray(res)) {
                  this.listCategoriasSub = res[0]; // Asegúrate de que response sea un array
                } else {
                  console.error('Respuesta no válida:', res);
                  this.listCategoriasSub = []; // Maneja el error adecuadamente
               }
          
              }, error => {
                console.log(error);
              }
              
            );
            }

        fnlistSubCategorias () {
          this.categoriasService.listSubCategorias().subscribe(
            res => {
           //  this.subcategoria= res;
            //  console.log(res);
              if (Array.isArray(res)) {
                this.subcategoria = res[0]; // Asegúrate de que response sea un array
              } else {
                console.error('Respuesta no válida:', res);
                this.subcategoria = []; // Maneja el error adecuadamente
             }
        
            }, error => {
              console.log(error);
            }
            
          );
        }
  
        fnAddSubCategorias(categoria:SubCategorias1):void{
          // alert("entro")
           this.categoriasService.addSubCategorias(categoria).subscribe(
             res=>{
             if(res){
              this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'SubCategoria Creada', life: 3000 });
               console.log(res);
               this.fnClear();
               this.fnlistSubCategorias();
             }
             else{
               alert("Error")
             }
           });
         }

    openNew() {
        this.categoria1 = {};
        this.submitted = false;
        this.categoriaModal = true;
    }

    verSubCategorias() {
      this.fnlistSubCategorias();

      this.categoria1 = {};
      this.submitted = false;
      this.subcategoriaModal = true;
    }

    addSubCategorias() {
    this.fnListCategoriasSub();
    this.categoria1 = {};
    this.submitted = false;
    this.subCategoriaAddModal = true;
    }

    // deleteProduct(product: Product) {
    //     this.deleteProductDialog = true;
    //     this.product = { ...product };
    // }

    // confirmDelete() {
    //     this.deleteProductDialog = false;
    //     this.products = this.products.filter(val => val.id !== this.product.id);
    //     this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Product Deleted', life: 3000 });
    //     this.product = {};
    // }

    hideDialog() {
        this.categoriaModal = false;
        this.submitted = false;
    }

    hideSubCatAddDialog() {
      this.subCategoriaAddModal = false;
      this.submitted = false;
    }

    hideSubCatVerDialog() {
    this.subcategoriaModal = false;
    this.submitted = false;
    }

    hideModalUpdate() {
        this.categoriaUpdateModal = false;
        this.submitted = false;
    }

    

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
