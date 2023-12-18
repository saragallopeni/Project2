const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to create a new task.

const createTask = (req, res) => {
    const { title, description, status, assignee_id } = req.body;

    const sql = 'INSERT INTO tasks (title, description, status, assignee_id) VALUES (?, ?, ?, ?)';
    const values = [title, description, status, assignee_id];

    databaza.query(sql, values, (error) => {
        if (error) {
            console.error('Error:', error);
            return res.status(500).json({ error: 'Error ne krijimine detyres' });
        }
        res.json({ message: 'Detyra u krijua me sukses'});
    });
};

module.exports = createTask;