import {Router} from "express";
import { listProducts } from '../controllers/products.controller.js';


const router = Router();



router.get("/Inventory/listSizeProducts");

router.get("/Inventory/ProductsList", listProducts);

router.post("/Inventory/SaveProduct");

router.post("/Inventory/UpdateProduct");

export default router;