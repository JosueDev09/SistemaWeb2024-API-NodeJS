import {listClients} from '../controllers/clients.controller.js';
import {Router} from "express";


const router = Router();

router.get("/Administration/ClientsList", listClients);

export default router;

