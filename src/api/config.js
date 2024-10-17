import { config } from "dotenv";
config();

//CONEXION CON BASE DE DATOS SQL SERVER
// export const PORT = process.env.PORT || 3000;
// export const DB_USER = process.env.DB_USER || "sa";
// export const DB_PASSWORD = process.env.DB_PASSWORD || "M1rf3l";
// export const DB_SERVER = process.env.DB_SERVER || "192.168.80.5";
// export const DB_DATABASE = process.env.DB_DATABASE || "dbSAC";
// export const DB_PORT = process.env.DB_PORT || 1433;

///CONNECTION WITH MYSQL DATABASE

export const PORT = process.env.PORT || 3000;
export const DB_USER = process.env.DB_USER || "root";
export const DB_PASSWORD = process.env.DB_PASSWORD || "admin";
export const DB_SERVER = process.env.DB_SERVER || "localhost";
export const DB_DATABASE = process.env.DB_DATABASE || "thewebsystem2024";
export const DB_PORT = process.env.DB_PORT || 3306 ;