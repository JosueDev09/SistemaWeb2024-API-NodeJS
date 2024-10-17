import mysql from "mysql2/promise"; //BASE DE DATOS CON MYSQL
//import sql from "mssql"; //BASE DE DATOS CON SQL SERVER

import { DB_PORT, DB_DATABASE, DB_SERVER, DB_USER,DB_PASSWORD } from "../config.js";

export const dbSettings = {
    user: DB_USER,
    password: DB_PASSWORD,
    // server: DB_SERVER,
    database: DB_DATABASE,
    port:DB_PORT
    // options: {
    //   trustServerCertificate: true,
    //   trustedConnection: false,  
    // },
  };

  export async function getConnection(){
    try{
        const connection = await mysql.createConnection(dbSettings);
        // const result = await mysql.execute"select *From tbUsers";
        // console.log(result);
        console.log("CONNECTION SUCCESFULLY");
        return connection;
    }
    catch{
        console.log("Error to database connect")
    }
  }

   export { mysql }; 