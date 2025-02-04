export class Users1{
    // intUser?:number = 0;
    strFullName? : string = '';
    strUsername? : string = '';
    strPassword? : string = '';
    strPhone? : string= '' ;
    strEmail? : string= '';
    intRolId?:number= 0;
   // strRolName?:string = '';
    strStatus?:string= '';
    intEstatus?:number = 0;
}
export interface Users{
    // intUser?:number ;
    strUsername? : string ;
    strPassword? : string ;
    strFullName? : string;
    strPhone? : string;
    strEmail? : string;
    intRolId?:number;
    strRolName?:string;
    intEstatus?:number;
    strStatus?:string;    

    
}

export class UserComponent {
    user: Users = {
        // intUser: 0,           // O puedes dejarlo como undefined
        strFullName: '',
        strPhone: '',
        strEmail: '',
        intRolId: 0,         // O undefined
        strRolName: '',
        intEstatus: 0,       // O undefined
        strStatus: ''
    };
}


