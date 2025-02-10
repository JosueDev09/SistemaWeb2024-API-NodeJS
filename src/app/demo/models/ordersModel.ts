export class Orders1{

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