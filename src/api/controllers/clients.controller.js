import { getConnection } from "../database/connection.js";





// Function to list clients
export const listClients = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to retrieve clients
        const result = await conn.execute('CALL thewebsystem2024.sp_tbclients_list');
        // Send the result back as a JSON response
        res.json(result[0]);
    } catch (error) {
        // Log any errors that occur during execution
        console.error('Error to execute stored procedure:', error);
        // Send a 500 error response with a message
        res.status(500).json({ message: 'Error to get clients' });
    }
}