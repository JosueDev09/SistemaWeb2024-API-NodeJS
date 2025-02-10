    import {Router} from 'express';
    import {getOrders} from '../controllers/orders.controller.js';

    const router = Router();

    router.get('/Administration/orders', getOrders);

    export default router;