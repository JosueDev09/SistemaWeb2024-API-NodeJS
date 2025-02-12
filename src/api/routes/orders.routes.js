    import {Router} from 'express';
    import {getOrders,getOrderProducts} from '../controllers/orders.controller.js';

    const router = Router();

    router.get('/Administration/orders', getOrders);
    router.get('/Administration/ordersproductslist', getOrderProducts);

    export default router;