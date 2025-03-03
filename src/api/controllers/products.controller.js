import { getConnection } from "../database/connection.js";

// Funcion para obtener los productos
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

//Funcion para obtener los productos de inventario
export const getInventoryProducts = async (req, res) => {
        try{
            const {idProduct} = req.query;
            const params = [idProduct];

            const conn = await getConnection();
            const result = await conn.execute('CALL dbCumtual.sp_tbInventory_Products_List(?)',params);
            res.json(result[0]);
        }catch(error){
            console.error('Error to execute stored procedure:', error);
            res.status(500).json({ message: 'Error to get products' });
        }
}

//Funcion para guardar los productos de inventario
export const saveInventoryProducts = async (req,res) => {
    const {intProducto,intColor,intSize,intQuenaity} = req.body;
    console.log('Datos front', req.body);

    try{
        const params =[intProducto,intColor,intSize,intQuenaity];
        const conn = await getConnection();
        const res = await conn.execute('CALL dbCumtual.sp_tbProducts_Inventory_Save(?,?,?,?)',params);

        res.json({message:'Invenotry Save'});
        
    } catch(e)
    {
        console.error('Error to execute stored procedure');
        res.status(500).json({message:'Error to save inventory'});
    }

}

// Funcion para obtener los colores de un producto
export const getProductColors = async (req, res) => {
    try {
        const { strNombreProducto } = req.query;

        //console.log(strNombreProducto);
        const params = [strNombreProducto];

        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbColors_available_products(?)', params);
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get product colors' });
    }
}

export const getProductSize = async (req, res) => {
    try {
        const { strNombreProducto,strNombreColor } = req.query;

        console.log('Datos Front',strNombreProducto,strNombreColor);
        const params = [strNombreProducto,strNombreColor];

        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbSize_available_products(?,?)', params);
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get product size' });
    }
}



// Funcion para obtener productos destacados
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

// Funcion para guardar un producto
export const saveProduct = async (req, res) => {
    try {
        const { strNameProduct, strDescriptionProduct,intCategorie,intColor,intSize, dblPrice,intQuantity,strStatus} = req.body;

        const params = [strNameProduct, 
            strDescriptionProduct,
            intCategorie,
            intColor,
            intSize, 
            dblPrice,
            intQuantity,
            strStatus];

            console.log('DATOS:',params);
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_save(?,?,?,?,?,?,?,?)', params);
        res.json({ message: 'Product saved' });
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to save product' });
    }
}

// Funcion para actualizar un producto
export const updateProduct = async (req, res) => {
    try {
        const {  strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity,intStatus} = req.body;

        const params = [ strProductName, strDescription,intCategorie,intColor,intSize, dblPrice,intQuantity,intStatus];
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbproducts_update(?,?,?,?,?,?,?,?)', params);
        res.json({ message: 'Product updated' });
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to update product' });
    }
}

// Funcion para obtener los colores
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

// Funcion para obtener los tamaños
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

// Funcion para obtener las categorias
export const getCategories = async (req, res) => {
    try {
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbcategories_list');
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get categories' });
    }


}

// Funcion para obtener el detalle de un producto
export const getProductoDetalle = async (req, res) => {
    try {
        const { strNombreCategoria,strNombreProducto } = req.query;
        const params =[
            strNombreCategoria,
            strNombreProducto
        ]
        //console.log('PARAMETROS:',params);
        const conn = await getConnection();
        const result = await conn.execute('CALL dbCumtual.sp_tbProducto_Detalle(?,?)', params);
        res.json(result[0]);
    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to get product detail' });
    }
}