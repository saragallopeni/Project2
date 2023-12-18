const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to delete a task.

const deleteTaskById = (_req, res) => {
    const {taskId} = _req.params;
    const sql = 'DELETE FROM tasks WHERE task_id = ?';
    
    databaza.query(sql, [taskId], (result) => {
      
      if (result.length === 0) { 
        return res.status(404).json({ error: 'Detyra nuk u gjet' });
      }
      res.json({ message: 'Detyra u fshi me sukses!' });
    });
  }

module.exports = deleteTaskById;
