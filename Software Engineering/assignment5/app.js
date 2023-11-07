const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

app.get('/assignment5', (req, res) => {
    res.send('This is for assignment 5 in CS 3203');
});

app.get('/about', (req, res) => {
    res.send('Emma Smith, November 6, 2023');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});