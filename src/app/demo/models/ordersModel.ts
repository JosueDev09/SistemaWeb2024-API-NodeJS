export class Orders1{

    strFullName? : string = '';
    strLastName? : string = '';
    strPhone? : string = '';
    strEmail? : string = '';
    intCity?:number = 0;
    strCityName?:string = '';    
    datDate?:Date;
    intCP?:number = 0;
    strAdress?:string = '';
    strReferences?:string = '';
    strPaymentMethod?:string = '';

 }
export interface Orders{
    // intUser?:number ;
    strFullName? : string;
    strPhone? : string;
    strEmail? : string;
    intCity?:number;
    strCityName?:string;    
    datDate?:Date;
    
}

export class OrderComponent {
    user: Orders = {
        // intUser: 0,           // O puedes dejarlo como undefined
        strFullName: '',
        strPhone: '',
        strEmail: '',
        intCity: 0,       // O undefined
        strCityName: ''
    };
}