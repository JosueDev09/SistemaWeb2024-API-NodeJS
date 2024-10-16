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

    listColoresProductos: any[] = [];

    listTallasProductos: any[] = [];
   
    productosUpdateDialog: boolean = false;

    productosAdd: boolean = false;

    deleteProductDialog: boolean = false;

    deleteProductsDialog: boolean = false;

    products: Product[] = [];

    product: Product = {};

    productos: Productos[]= [];

    producto: Productos = {};

    productos1: Productos1[]= [];

    producto1: Productos1 = {};

    listProductosCategorias: any[] = [];

    selectedProducts: Product[] = [];

    submitted: boolean = false;

    cols: any[] = [];

    statuses: any[] = [];

    rowsPerPageOptions = [5, 10, 20];

    constructor(private productoService: ProductosService, private messageService: MessageService) { }

    ngOnInit() {
       this.fnListProductos();
       this.fnListProductosCategorias();
       this.fnListColoresProductos();
       this. fnListTallasProductos();
    }

    fnListProductos(){
        this.productoService.listProductos().subscribe(
            res => {
             this.producto= res;
              console.log(res);
        
            }, error => {
              console.log(error);
            }
            
          );
    }
    fnListProductosCategorias(){
        this.productoService.listProductosCategorias().subscribe(
            res => {
             this.listProductosCategorias= res;
              console.log(res);
        
            }, error => {
              console.log(error);
            }
            
          );
          }

          fnListColoresProductos(){
            this.productoService.listColoresProductos().subscribe(
                res => {
                 this.listColoresProductos= res;
                  console.log(res);
            
                }, error => {
                  console.log(error);
                }
                
              );
              }

              fnListTallasProductos(){
                this.productoService.listTallasProductos().subscribe(
                    res => {
                     this.listTallasProductos= res;
                      console.log(res);
                
                    }, error => {
                      console.log(error);
                    }
                    
                  );
                  }

          fnAddProductos(productos:Productos1):void{
            // alert("entro")
             this.productoService.addProductos(productos).subscribe(
               res=>{
               if(res){
                this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Producto Creado', life: 3000 });
                 console.log(res);
                 this.fnClear();
                 this.fnListProductos();
               }
               else{
                 alert("Error")
               }
             });
           }
         
           fnClear(){
             this.producto.strNombreProducto='';
             this.producto.strDescripcionProducto='';
             this.producto.strCategoria='';
             this.producto.intCantidad=0;
           
           }
         
           fnUpdateProducto(select:any)
           {
            this.producto1.intProducto = select.intProducto;
            this.producto1.strNombreProducto = select.strNombreProducto;
            this.producto1.strDescripcionProducto = select.strDescripcionProducto;
            this.producto1.intCategoria = select.intCategoria;        
            this.producto1.dblPrecio = select.dblPrecio;        
            this.producto1.intCantidad = select.intCantidad;  
            this.producto1.intColor = select.intColor;  
            this.producto1.intTalla = select.intTalla;                
            this.productosUpdateDialog = true;
           
           }
         
           fnUpdateProductos(productos:Productos1):void{
             // alert("entro")
              this.productoService.updateProductos(productos).subscribe(
                res=>{
                
                if(res){
                  this.messageService.add({ severity: 'success', summary: 'Correctamente', detail: 'Producto Actualizado', life: 3000 });
                  console.log(res);
                  
                  this.fnListProductos();
                }
                else{
                  alert("Error")
                }
              });
            }

    

    openNew() {
        this.product = {};
        this.submitted = false;
        this.productosAdd = true;
    }

    deleteSelectedProducts() {
        this.deleteProductsDialog = true;
    }

    deleteProduct(product: Product) {
        this.deleteProductDialog = true;
        this.product = { ...product };
    }

    confirmDelete() {
        this.deleteProductDialog = false;
        this.products = this.products.filter(val => val.id !== this.product.id);
        this.messageService.add({ severity: 'success', summary: 'Successful', detail: 'Producto Deleted', life: 3000 });
        this.product = {};
    }

    hideDialog() {
        this.productosUpdateDialog = false;
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

    

    onGlobalFilter(table: Table, event: Event) {
        table.filterGlobal((event.target as HTMLInputElement).value, 'contains');
    }
}
