import { Component, OnInit } from '@angular/core';
import { Product } from 'src/app/demo/models/product';
import { MessageService } from 'primeng/api';
import { Table } from 'primeng/table';
import { ProductService } from 'src/app/demo/service/product.service';
import { Productos, Productos1 } from 'src/app/demo/models/productosModels';
import { ProductosService } from 'src/app/demo/service/productos.service';

@Component({
    templateUrl: './productos.component.html',
    providers: [MessageService]
})
export class ProductosComponent implements OnInit {

    listColorsProducts: any[] = [];

    listSizeProducts: any[] = [];

    listCategories: any[] = [];
   
    productosUpdateDialog: boolean = false;

    productosAddDialog: boolean = false;

    deleteProductDialog: boolean = false;

    deleteProductsDialog: boolean = false;

   // products: Product[] = [];

    //product: Product = {};

    product: Product[] = [];

    products: Productos[]= [];
    
   // producto: Productos = {};

    products1: Productos1[]= [];

    product1: Productos1 = {};

    selectedProducts: Product[] = [];

    submitted: boolean = false;

    cols: any[] = [];

    statuses: any[] = [];

    rowsPerPageOptions = [5, 10, 20];

    constructor(private productoService: ProductosService, private messageService: MessageService) { }

    ngOnInit() {
       this.fnListProducts();
       this.fnListCategories();
       this.fnListColoresProductos();
       this. fnListTallasProductos();
    }

    fnListProducts(){
        this.productoService.listProducts().subscribe(
          (res:any) => {         
            if (Array.isArray(res)) {
              this.product = res[0]; // Asegúrate de que response sea un array
          } else {
              console.error('Respuesta no válida:', res);
              this.product = []; // Maneja el error adecuadamente
          }
        }
          );
    }
   

          fnListCategories(){
            this.productoService.listCategories().subscribe(
              (res:any) => {
                if(Array.isArray(res)) 
                {
                  this.listCategories = res[0];
                } else {
                  console.error('Respuesta no válida:', res);
                  this.listCategories= [];
                }                
              }  
                
              );
              }

          fnListColoresProductos(){
            this.productoService.listColoresProductos().subscribe(
              (res:any) => {
                if(Array.isArray(res)) 
                {
                  this.listColorsProducts = res[0];
                } else {
                  console.error('Respuesta no válida:', res);
                  this.listColorsProducts= [];
                }                
              }  
                
              );
              }

              fnListTallasProductos(){
                this.productoService.listSizeProductos().subscribe(
                  (res:any) => {
                    if(Array.isArray(res)) 
                    {
                      this.listSizeProducts = res[0];
                    } else {
                      console.error('Respuesta no válida:', res);
                      this.listSizeProducts<= [];
                    }                
                  } 
                    
                  );
                  }

          fnAddProductos(products:Productos1):void{
            // alert("entro")
             this.productoService.addProductos(products).subscribe(
               res=>{
               if(res){
                this.messageService.add({ severity: 'success', summary: 'Succsesfully', detail: 'Created Product', life: 3000 });
                 console.log(res);
                 this.fnClear();
                 this.fnListProducts();
               }
               else{
                 alert("Error")
               }
             });
           }
         
           fnClear(){
             this.product1.strNameProduct='';
             this.product1.strDescriptionProduct='';
             //this.producto1.strCategoria='';
             this.product1.intQuantity=0;
             this.product1.dblPrice=0;
           
           }
         
           fnUpdateProduct(select:any)
           {
          // this.product1.intProduct = select.intProduct;
            this.product1.strNameProduct = select.strNameProduct;
            this.product1.strDescriptionProduct = select.strDescriptionProduct;
            this.product1.intQuantity = select.intQuantity;        
            this.product1.dblPrice = select.dblPrice;        
            this.product1.intColor = select.intColor;  
            this.product1.intSize = select.intSize;  
            this.product1.intCategorie = select.intCategorie;   
            this.product1.intStatus = select.intStatus;           
            this.productosUpdateDialog = true;
           
           }
         
           fnUpdateProductos(productos:Productos1):void{
             // alert("entro")
              this.productoService.updateProductos(productos).subscribe(
                res=>{
                
                if(res){
                  this.messageService.add({ severity: 'success', summary: 'Succsesfully', detail: 'Updated Product', life: 3000 });
                  console.log(res);
                  
                  this.fnListProducts();
                }
                else{
                  alert("Error")
                }
              });
            }

    

    // openNew() {
    //     this.product = {};
    //     this.submitted = false;
    //     this.productosAdd = true;
    // }

    fnOpenAddProductModal()
    {
      this.productosAddDialog = true;
      this.fnClear();
    }

    deleteSelectedProducts() {
        this.deleteProductsDialog = true;
    }

    // deleteProduct(product: Product) {
    //     this.deleteProductDialog = true;
    //     this.product = { ...product };
    // }

    // confirmDelete() {
    //     this.deleteProductDialog = false;
    //     this.products = this.products.filter(val => val.id !== this.product.id);
    //     this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Producto Deleted', life: 3000 });
    //     this.product = {};
    // }

    hideDialog() {
        this.productosUpdateDialog = false;
        this.productosAddDialog = false;
        this.submitted = false;
        this.fnClear();
    }

    

    // findIndexById(id: string): number {
    //     let index = -1;
    //     for (let i = 0; i < this.products.length; i++) {
    //         if (this.products[i].id === id) {
    //             index = i;
    //             break;
    //         }
    //     }

    //     return index;
    // }

    

    onGlobalFilter(table: Table, event: Event) {
        table.filterGlobal((event.target as HTMLInputElement).value, 'contains');
    }
}
