import { getConnection } from "../database/connection.js";


export const listEmployes = async (req, res) => {
      //Con estas lineas de codigo estoy mandando a llamar un store procedure 
    //El pool hace la conexion a la base de datos
    try {
        const conn = await getConnection();
        const result = await conn.execute('CALL thewebsystem2024.sp_tbusers_list') //Asi es como se manda a llamar una store procedure en mysql
        res.json(result[0]);
        }
        catch(error){
            console.error('Error to execute stored procedure:', error);
            res.status(500).json({ message: 'Error to get employees'});
        }

}

export const listRol = async (req, res) => {
    //Con estas lineas de codigo estoy mandando a llamar un store procedure 
  //El pool hace la conexion a la base de datos
  try {
      const conn = await getConnection();
      const result = await conn.query('SELECT * FROM tbrol') //Asi es como se manda a llamar una store procedure en mysql
      res.json(result[0]);
      }
      catch(error){
          console.error('Error to execute query:', error);
          res.status(500).json({ message: 'Error to get roles'});
      }

}