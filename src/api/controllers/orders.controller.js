import { getConnection } from "../database/connection.js";


export const getOrders = async (req, res) => {
    try {
        const connection = await getConnection();
        const result = await connection.execute('CALL sp_tbOrders_list');

        res.json(result[0]);
        res.status(200);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: 'Error to get orders' });
    }

}