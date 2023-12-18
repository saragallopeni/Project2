
const databaza = require('../databaza.js');

// Kjo pjesa për -> Endpoint to view tasks assigned to a specific user.

const viewAssigneedTask = (req, res) => {
const userId = req.params;

const sql = 'SELECT * FROM tasks WHERE assignee_id = ?';
databaza.query(sql, [userId], (error, results) => {
    if (error) {
        console.error('Error:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
    res.json(results);
});
}

module.exports = viewAssigneedTask;