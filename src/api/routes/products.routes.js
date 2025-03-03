import {Router} from "express";
import { listProducts,getProductsDes,saveProduct,getColor,getSize, updateProduct, 
         getCategories, getProductoDetalle, getInventoryProducts,saveInventoryProducts,
         getProductColors,getProductSize } from '../controllers/products.controller.js';
import { get } from "http";


const router = Router();



router.get("/Inventory/listSizeProducts");

router.get("/Inventory/ProductsList", listProducts);

router.get("/Inventory/InventoryProductsList", getInventoryProducts);

router.post("/Inventory/InventoryProductsSave",saveInventoryProducts);

router.post("/Inventory/SaveProducts",saveProduct);

router.post("/Inventory/UpdateProduct",updateProduct);

router.get("/Inventory/ProductSize",getSize);

router.get("/Inventory/ProductColor",getColor);

router.get("/Ecommerce/ProductosDestacados",getProductsDes);

router.get("/Inventory/Categories",getCategories);

router.get("/Ecommerce/Categorias",getCategories);

router.get("/Ecommerce/Producto-Detalle",getProductoDetalle);

router.get("/Ecommerce/ProductoColores",getProductColors)

router.get("/Ecommerce/ProductoTallas",getProductSize)

router.get("/Ecommerce/Productos", listProducts);

export default router;