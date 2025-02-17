import { getConnection } from "../database/connection.js";

// Function to list employees
export const listProducts = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to retrieve employees
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_list');
        // Send the result back as a JSON response
        res.json(result[0]);
    } catch (error) {
        // Log any errors that occur during execution
        console.error('Error to execute stored procedure:', error);
        // Send a 500 error response with a message
        res.status(500).json({ message: 'Error to get products' });
    }
}

// Function to list employees
export const getProductsDes = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to retrieve employees
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_list');
        // Send the result back as a JSON response
        res.json(result[0]);
    } catch (error) {
        // Log any errors that occur during execution
        console.error('Error to execute stored procedure:', error);
        // Send a 500 error response with a message
        res.status(500).json({ message: 'Error to get products' });
    }
}

export const saveProduct = async (req, res) => {
    try {
        const { strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity} = req.body;

        const params = [strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity];
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_save(?,?,?,?,?,?,?,?)', params);
        res.json({ message: 'Product saved' });
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to save product' });
    }
}

export const updateProduct = async (req, res) => {
    try {
        const { intIdProduct, strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity} = req.body;

        const params = [intIdProduct, strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity];
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_update(?,?,?,?,?,?,?,?,?)', params);
        res.json({ message: 'Product updated' });
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to update product' });
    }
}

export const getColor = async (req, res) => {
    try {
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbColor_list');
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get colors' });
    }
}

export const getSize = async (req, res) => {
    try {
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbProductsSize_list');
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get sizes' });
    }
}