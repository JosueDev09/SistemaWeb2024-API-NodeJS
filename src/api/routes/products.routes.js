import {Router} from "express";
import { listProducts,getProductsDes,saveProduct,getColor,getSize, updateProduct } from '../controllers/products.controller.js';
import { get } from "http";


const router = Router();



router.get("/Inventory/listSizeProducts");

router.get("/Inventory/ProductsList", listProducts);

router.post("/Inventory/SaveProduct",saveProduct);

router.post("/Inventory/UpdateProduct",updateProduct);

router.get("/Inventory/ProductSize",getSize);

router.get("/Inventory/ProductColor",getColor);

router.get("/Ecommerce/ProductosDestacados",getProductsDes);

export default router;