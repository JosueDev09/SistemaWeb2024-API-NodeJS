export class InventoryProduct1 {
   intProduct?: number = 0;
   strNameProduct?: string = '';
   intColor?: number = 0;
   strColorName?: string = '';
   intSize?: number = 0;
   strSizeName?: string = '';
   intQuantity?: number = 0;

}

export interface InventoryProduct { 
   intProduct?: number;
   strNameProduct?: string;
   intColor?: number;
   strColorName?: string;
   intSize?: number;
   strSizeName?: string;
   intQuantity?: number;
   intStatus?: number;        
}