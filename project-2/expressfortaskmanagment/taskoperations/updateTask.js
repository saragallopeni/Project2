const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to update task details

const updateTaskDescription = (req, res) => {
    const { taskId, description } = req.params;

    const sql = 'UPDATE tasks SET description = ? WHERE task_id = ?';
    const values = [description, taskId];

    databaza.query(sql, values, (error, result) => {
        if (error) return res.status(500).json({ error: 'Internal error' });

        if (result.affectedRows === 0) { 
            return res.status(404).json({ error: 'Detyra nuk u gjet' });
        }
        res.json({ message: 'Detyra u ndryshua me sukses' });
    });
};

module.exports = updateTaskDescription;


  
      
  
  
