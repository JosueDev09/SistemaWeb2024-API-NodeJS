import { getConnection } from "../database/connection.js";



export const saveEmployees = async (req, res) => {
    try {
        const {strFullName, strUsername, strPassword,
            strEmail,
            strPhone,
            intRolId,
            strStatus,
        } = req.body;

        //sconsole.log(req.body);



        // Verificar que los parámetros no estén vacíos
        if (!strUsername || !strPassword || !strFullName || !strEmail || !strPhone || !intRolId  || !strStatus) {
            return res.status(400).json({ message: "Faltan parámetros" });
        }

        const parameters = [strFullName, strUsername, strPassword, strPhone, strEmail, intRolId, strStatus];
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to save an employee
        const result = await conn.execute('CALL dbCumtual.sp_SaveEmployees(?,?,?,?,?,?,?)', parameters);

        // Send a 200 OK response with the result of the query
    //res.json(result[0]);
        
        res.status(200).json({ message: 'Employee saved successfully' });
    
    
    } catch (error) {
    
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to save employee' });
    
    }
}

export const updateEmployees = async (req, res) => {
    try {
        const {strFullName, strUsername, 
            strEmail,
            strPhone,
            intRolId,
            intEstatus,
        } = req.body;

        console.log(req.body);

        // Verificar que los parámetros no estén vacíos
        if (!strUsername || !strFullName || !strEmail || !strPhone || !intRolId  || !intEstatus) {
            return res.status(400).json({ message: "Faltan parámetros" });
        }
        const parameters = [strFullName, strUsername, strPhone, strEmail, intRolId, intEstatus];
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to update an employee
        const result = await conn.execute('CALL dbCumtual.sp_tbUpdateEmployee(?,?,?,?,?,?)', parameters);
        // Send a 200 OK response with the result of the query
        res.status(200).json({ message: 'Employee updated successfully' });


    } catch (error) {
        console.error('Error to execute stored procedure:', error);
        res.status(500).json({ message: 'Error to update employee' });
    }

}

// Function to list employees
export const listEmployes = async (req, res) => {
    try {
        // Get a database connection
        const conn = await getConnection();
        // Execute the stored procedure to retrieve employees
        const result = await conn.execute('CALL dbCumtual.sp_tbusers_list');
        //const result = await conn.execute('CALL thewebsystem2024.sp_tbusers_list');
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