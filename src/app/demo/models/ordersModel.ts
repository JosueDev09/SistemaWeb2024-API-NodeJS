export class Orders1{
    intOrder?:number = 0;
    intClient?:number = 0;
    strClientName? : string = '';
    strPhone? : string = '';
    strEmail? : string = '';
    intCity?:number = 0;
    strCityName?:string = '';    
    datDateUp?:Date;
    intCP?:number = 0;
    strAdress?:string = '';
    strReferences?:string = '';
    strPaymentMethod?:string = '';
    strStatusName?:string = '';
    intQuantityProducts?:number = 0;
    strNameProduct?:string = '';
    idProduct?:number = 0;
    strCodeProduct?:string = '';

 }
 export class OrdersProducts1{

    intQuantityProducts?:number = 0;
    strNameProduct?:string = '';
    idProduct?:number = 0;
    strSizeName? : string= '';
    strColorName? : string= '';
    strCodeProduct?:string = '';

 }

 export interface OrdersProducts{
    // intUser?:number ;
    inClient?:number;
    idProduct?:number;
    strCodeProduct? : string;
    strNameProduct? : string;
    strSizeName? : string;
    strColorName? : string;
    intQuantityProducts?:number;
    
    
}
export interface Orders{
    // intUser?:number ;
    strClientName? : string;
    strPhone? : string;
    strEmail? : string;
    intCity?:number;
    strCityName?:string;    
    datDateUp?:Date;
    
}

export class OrderComponent {
    user: Orders = {
        // intUser: 0,           // O puedes dejarlo como undefined
        strClientName: '',
        strPhone: '',
        strEmail: '',
        intCity: 0,       // O undefined
        strCityName: ''
    };
}