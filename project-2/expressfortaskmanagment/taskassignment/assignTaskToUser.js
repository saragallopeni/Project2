const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to assign a task to a user.

const assignTaskToUser = (req, res) => {
    const { taskId, userId } = req.params;

    const sql = 'UPDATE tasks SET assignee_id = ? WHERE task_id = ?';

    databaza.query(sql, [userId, taskId], (error) => {
        if (error) {
            console.error('Error:', error);
            return res.status(500).json({ error: 'Internal server error' });
        }
        res.json({ message: 'Detyra u ndryshua me sukses' });
    });
}

module.exports = assignTaskToUser;