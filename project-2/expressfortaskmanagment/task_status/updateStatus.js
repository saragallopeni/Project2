const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to update the status of a task.

const updateTaskStatusById = (req, res) => {
  const { status, taskId } = req.params;
    const sql = 'UPDATE tasks SET status = ? WHERE task_id = ?';
    
    databaza.query(sql, [status, taskId], (error,result) => {
      
      if (error) {
        console.error('Error:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
  
    if (result === null || result.affectedRows === 0) { 
        return res.status(404).json({ error: 'Detyra nuk u gjet' });
    }
  
      res.json({ message: 'Detyra u ndryshua me sukses!' });
    });
  }

  module.exports = updateTaskStatusById;