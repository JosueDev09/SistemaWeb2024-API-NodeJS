export class InventoryProduct1 {
   intProduct?: number = 0;
   intColor?: number = 0;
   intSize?: number = 0;
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