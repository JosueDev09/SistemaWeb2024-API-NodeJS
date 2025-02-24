import {Router} from "express";
import { shipProducts } from '../helpers/enviaTodo.js';



const router = Router();

router.post("/Ecommerce/Ship",shipProducts);






export default router