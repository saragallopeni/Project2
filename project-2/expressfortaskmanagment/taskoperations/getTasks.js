const databaza = require('../databaza.js');


//Kjo pjesa për -> "Endpoint to get a list of tasks." 

const getTaskList = (_req, res) => {
    const sql = 'SELECT * FROM tasks';
        databaza.query(sql, (error, result) => {
            if (error) return res.status(500).json({ error: 'Dështim në marrje të të dhënave' });
            res.json(result);
          });
        }

 
module.exports = getTaskList;