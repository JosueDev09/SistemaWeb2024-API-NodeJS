export class Users1{
    intUser?:number = 0;
    FullName? : string = '';
    strNombre? : string= '';
    phone? : string= '' ;
    email? : string= '';
    intRolId?:number= 0;
   // strRolName?:string = '';
    strStatus?:string= '';
    intEstatus?:string= '';
}
export interface Users{
    intUser?:number ;
    FullName? : string;
    strNombre? : string;
    phone? : string;
    email? : string;
    intRolId?:number;
    strRolName?:string;
    intEstatus?:number;
    strStatus?:string;    

    
}

export class UserComponent {
    user: Users = {
        intUser: 0,           // O puedes dejarlo como undefined
        FullName: '',
        strNombre: '',
        phone: '',
        email: '',
        intRolId: 0,         // O undefined
        strRolName: '',
        intEstatus: 0,       // O undefined
        strStatus: ''
    };
}


