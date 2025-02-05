// export class Clients1{
//     // intUser?:number = 0;
//     strFullName? : string = '';
//     strPhone? : string= '' ;
//     strEmail? : string= '';
//     intRolId?:number= 0;
//    // strRolName?:string = '';
//     strStatus?:string= '';
//     intEstatus?:number = 0;
// }
export interface Clients{
    // intUser?:number ;
    strFullName? : string;
    strPhone? : string;
    strEmail? : string;
    intCity?:number;
    strCity?:string;    
    datDate?:Date;
    
}

export class ClientComponent {
    user: Clients = {
        // intUser: 0,           // O puedes dejarlo como undefined
        strFullName: '',
        strPhone: '',
        strEmail: '',
        intCity: 0,       // O undefined
        strCity: ''
    };
}