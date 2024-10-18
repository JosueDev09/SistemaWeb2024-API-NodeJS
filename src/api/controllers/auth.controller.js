import { getConnection } from "../database/connection.js";
import mysql from 'mysql2/promise'; 
import jwt from 'jsonwebtoken';

import { senEmailVerify } from '../helpers/emailHelpers.js';
import crypto from 'crypto';

const secretKey = "secret";


function generateToken() {
    const token = crypto.randomBytes(32).toString('hex');
    const expiration = new Date();
    expiration.setMinutes(expiracion.getMinutes() + 2); // The token expiry on 1 hour
    return { token, expiration };
  }

  //This function verify if exist the users 

export const loginSession = async (req, res) => {
  try {
      const { strUser, 
        strPassword, 
         } = req.body;

        console.log("Primer",req.body)

      // Verificar que los parámetros no estén vacíos
      if (!strUser || !strPassword) {
          return res.status(400).json({ message: "Faltan parámetros" });
      }
          

      const connection = await getConnection();

     // console.log("Se conecto el controlador")
     const [results] = await connection.execute('CALL sp_authLoginUsuario(?, ?)', [strUser,strPassword]);

      const user = results[0][0]; // Asegúrate de acceder correctamente al primer resultado
    // console.log(user);
      // Verificar si se encontró un usuario
      
          // Comparar los datos de autenticación
       
          if (strUser === user.strUser && strPassword === user.strPassword) {
            const token = jwt.sign({ strUser,strPassword, intRol: user.intRol }, secretKey, { expiresIn: "1m" });
            return res.status(200).json({success:true, message: "Generated Successfully", token, rol: user.intRol });
        }
       
          return res.status(401).json({ success: false, message: "Failed Authentication" });
        

  } catch (error) {
      console.error("Error:", error); // Imprimir el error para depuración
      return res.status(500).json({ message: "Error en el servidor" }); // Asegúrate de no enviar el objeto `res`
  }
};

  export const verifyTokenAccess = async(req, res) => 
    {
        return res.status(200).json({ message: "Tienes permitido ver esta pantalla", success: true, redirectTo: '/dashboard' });
    }


export const getHome = (req, res) => {
  const userRole = req.intRol; // Suponiendo que guardas el rol en el token

  if (userRole === 1) {
      return res.status(200).json({ success: true, redirectTo: '/dashboard' }); // Redirigir a la pantalla de administrador
  } else if (userRole === 2) {
      return res.redirect('/user-dashboard'); // Redirigir a la pantalla de usuario
  } else {
      return res.status(403).send({ message: 'Acceso denegado.' });
  }
};

    //This function is to validate the register account with token generate to register
export const verifyTokenEmail = async(req, res) => 
    {
      const { token } = req.query;
  
      if (!token) {
        return res.status(400).json({ error: 'Token not provided' });
      }
  
      try {
        const connection = await getConnection();
        
        // Verificar si el token es válido
        const [rows] = await connection.execute('SELECT * FROM tbClientes WHERE strToken = ?  AND token_expiracion > NOW()', [token]);
        
        if (rows.length === 0) {
          await connection.execute('DELETE FROM tbClientes  WHERE strToken = ?', [token]);
          return res.status(400).json({ error: 'Token inválido o expirado' });
        }
        
       
        
        // Update user status if was validate 
        await connection.execute('UPDATE tbClientes  SET intConfirmado = 1, strToken = NULL, token_expiracion = NULL WHERE strToken = ?', [token]);
        
        res.json({ message: 'Cuenta confirmada exitosamente' });
  
       // res.redirect('http://localhost:3000/api/auth/login');
      } catch (error) {
        console.error('Error al confirmar la cuenta:', error);
  
       
        res.status(500).json({ error: 'Error al confirmar la cuenta' });
      }
    
  }

  export const forgetPassword = async (req, res) => {
    try{       
        const { //Solo es un indicador de los datos si se mandaron bien
            //Con estos nombres deben ser mandados desde el front porque asi los va a recibir la base de datos
             strUsuario,    
             stNombreCompleto,      
             strEmail 
        } = req.body;
  
  
        console.log('Request body:', req.body); 
  
        
        const { token, expiracion } = generarToken();
        console.log('Token:',token ); 
  
        const parametros = [ // Verify data
          
          strUsuario ?? null,
          strEmail ?? null,
          stNombreCompleto,
          token  ?? null,
          expiracion
        ];
  
  
        const connection = await getConnection();
       // Execute stored procedure
       const result = await connection.execute('CALL thebigappleshop.sp_forgetPassword_Save(?, ?, ?, ?, ?)', parametros); 
  
       
        // Send validate email
       await senEmailVerify(strEmail, stNombreCompleto,token);
  
      res.json({ message: 'Cambio de contraeña correctamente'});
  
    }
    catch(error){
        console.error('Error al ejecutar el procedimiento almacenado:', error);
    }
  
  
  
  }