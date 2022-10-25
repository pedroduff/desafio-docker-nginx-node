const express = require('express')
const app = express()
const port = 5000
const config = {
    host: 'db',
    user: 'root',
    password: 'root',
    database:'nodedb'
};
const mysql = require('mysql')
const connection = mysql.createConnection(config)

const createSql = `
    CREATE TABLE IF NOT EXISTS people (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(255), PRIMARY KEY (id));
  `;
    const insertSql = `
    INSERT INTO people (name) values ('Pedro Teste'), ('Fullcycle Rocks');
  `;

connection.query(createSql)  
connection.query(insertSql)
connection.end()

let tablePeople = '<table><thead><tr><th>Name</th></tr></thead><tbody>';

app.get('/', (req,res) => {
    const sql_people = 'select name from people'
    connection.query(sql_people, function (err, result) {
    if(err) throw err;
    
    for(let people of result){
        tablePeople += `<tr><td>${people.name}</td></tr>`;
    }
    
    tablePeople += '</tbody></table>';

    res.send('<h1>Full Cycle Rocks! </h1><br/>'+ tablePeople)

    })

})

app.listen(port, ()=> {
    console.log('Rodando na porta ' + port)
})