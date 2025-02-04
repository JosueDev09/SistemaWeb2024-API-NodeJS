import {Router} from "express";
import { listEmployes, listRol, saveEmployees,updateEmployees } from '../controllers/user.controller.js';


const router = Router();


 router.get("/Administration/RoleList",listRol);

 router.get("/Administration/EmployeesList", listEmployes);

 router.post("/Administration/SaveEmployees",saveEmployees);

 router.post("/Administration/UpdateEmployees",updateEmployees);
// router.get("/dashboard", verifyToken,verifyTokenAccess) //Esta ruta lo que haces es redirigir las pantallas del admijn y validar si hay un auth 



export default router;