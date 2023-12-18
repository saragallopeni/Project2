const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to retrieve tasks based on their status.

const getTasksByStatus = (req, res) => {
    const { statusi } = req.params;

    const sql = 'SELECT * FROM tasks WHERE status = ?';

    databaza.query(sql, [statusi], (error, results) => {
        if (error) {
            console.error('Error:', error);
            return res.status(500).json({ error: 'Internal server error' });
        }
        res.json(results);
    });
};

module.exports = getTasksByStatus;
