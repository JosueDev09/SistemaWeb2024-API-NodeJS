import { getConnection } from "../database/connection.js";

// Function to list employees
export const listEmployes = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to retrieve employees
        const result = await conn.execute('CALL thewebsystem2024.sp_tbusers_list');
        // Send the result back as a JSON response
        res.json(result[0]);
    } catch (error) {
        // Log any errors that occur during execution
        console.error('Error to execute stored procedure:', error);
        // Send a 500 error response with a message
        res.status(500).json({ message: 'Error to get employees' });
    }
}

// Function to list roles
export const listRol = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the query to retrieve roles
        const result = await conn.query('SELECT * FROM tbrol');
        // Send the result back as a JSON response
        res.json(result[0]);
    } catch (error) {
        // Log any errors that occur during execution
        console.error('Error to execute query:', error);
        // Send a 500 error response with a message
        res.status(500).json({ message: 'Error to get roles' });
    }
}