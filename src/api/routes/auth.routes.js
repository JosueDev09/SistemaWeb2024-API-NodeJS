import {Router} from "express";
import {loginSession,verifyTokenAccess,verifyTokenEmail,forgetPassword } from '../controllers/auth.controller.js';
//import {loginSession,verifyTokenAccess,registerClients,verifyTokenEmail,forgetPassword} from '../controllers/auth.controller.js';
import {verifyToken} from '../middleware/authMiddleware.js'

const router = Router();


router.post('/auth/login', loginSession);

//router.post('/auth/registerClient', registerClients,verifyTokenAccess);

 router.get("/dashboard", verifyToken,verifyTokenAccess);
 router.get("/Administracion/ListaPuestos", verifyToken,verifyTokenAccess);
 router.get("/Administracion/Empleados", verifyToken,verifyTokenAccess);
// router.get("/dashboard", verifyToken,verifyTokenAccess) //Esta ruta lo que haces es redirigir las pantallas del admijn y validar si hay un auth 

 router.get("/auth/verify-email",verifyTokenEmail) 

 router.post('/auth/forgetPassword', forgetPassword,verifyTokenAccess);

export default router;