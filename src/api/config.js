import { config } from "dotenv";
config();


///CONNECTION WITH MYSQL DATABASE

export const PORT = process.env.PORT || 3000;
export const DB_USER = process.env.DB_USER || "root";
export const DB_PASSWORD = process.env.DB_PASSWORD || "admin";
export const DB_SERVER = process.env.DB_SERVER || "localhost";
export const DB_DATABASE = process.env.DB_DATABASE || "dbCumtual";
export const DB_PORT = process.env.DB_PORT || 3306 ;


// export const PORT = process.env.PORT || 3000;
// export const DB_USER = process.env.DB_USER || "root";
// export const DB_PASSWORD = process.env.DB_PASSWORD || "admin";
// export const DB_SERVER = process.env.DB_SERVER || "localhost";
// export const DB_DATABASE = process.env.DB_DATABASE || "thewebsystem2024";
// export const DB_PORT = process.env.DB_PORT || 3306 ;
