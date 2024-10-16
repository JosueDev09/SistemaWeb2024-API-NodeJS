export class Productos1{
    intProducto?: number = 0;
    //strCodigoProducto?: string = ''; 
    strNombreProducto?:string = '';  
    strDescripcionProducto?:string = '';  
    dblPrecio?:number = 0;  
    intCantidad?:number = 0;  
    intCategoria?:number = 0;  
    intColor?:number = 0;
    intTalla?:number = 0;
    // strEstatus?:string = '';  
    // Estatus?:string = '';  
}
export interface Productos{
    intProducto?: number;
    //strCodigoProducto?: string; 
    strNombreProducto?:string;  
    strDescripcionProducto?:string;  
    dblPrecio?:number;  
    intCantidad?:number; 
    strCategoria?:string; 
    intCategoria?:number; 
    strNombreCategoria?:string;   
    // strEstatus?:string;  
     Estatus?:string;
     intColor?: number;
     strColor?: string;  
     intTalla?:number;
     strTalla?:string;
}