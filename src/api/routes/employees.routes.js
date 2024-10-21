import {Router} from "express";
import { listEmployes, listRol } from '../controllers/user.controller.js';


const router = Router();


 router.get("/Administration/RoleList",listRol);

 router.get("/Administration/EmployeesList", listEmployes);

 router.post("/Administration/SaveEmployees");

 router.post("/Administration/UpdateEmployees");
// router.get("/dashboard", verifyToken,verifyTokenAccess) //Esta ruta lo que haces es redirigir las pantallas del admijn y validar si hay un auth 



export default router;