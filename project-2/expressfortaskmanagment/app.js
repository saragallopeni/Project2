const express = require('express');
const db = require('./databaza.js');
//the getters 
const getMethod = require('./taskoperations/getTasks.js');
const viewAssigneedTask = require('./taskassignment/viewAssigneedTask.js');
const getTasksByStatus = require('./task_status/getTaskByStatus.js');
//the delete
const deleteTaskById = require('./taskoperations/deleteTask.js');
//the update
const updateTaskStatusById = require('./task_status/updateStatus.js')
const assignTaskToUser = require('./taskassignment/assignTaskToUser.js');
const updateTaskDescription = require('./taskoperations/updateTask.js');
//create
const createTask = require('./taskoperations/createTask.js');


const app = express();
app.use(express.json());

// Middleware për lidhjen e bazës së të dhënave
app.use((req, _res, next) => {
  req.db = db;
  next();
});

//endpoint
app.get('/tasks', getMethod);
app.get('/tasks/user/:userId', viewAssigneedTask);
app.get('/getTaskByStatus/:statusi',getTasksByStatus);

app.delete('/delete/:taskId', deleteTaskById);

app.put('/updateStatus/:status/:taskId', updateTaskStatusById);
app.put('/assignTask/:taskId/:userId', assignTaskToUser);
app.put('/updateDescription/:taskId/:description',updateTaskDescription);

app.post('/createTask/:title/:descritpion/:status/:assignee_id',createTask);


// Fillimi i serverit
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Serveri është i gatshëm në portin ${PORT}`);
});



