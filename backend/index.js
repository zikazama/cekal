const express = require("express");
const cors = require("cors");
const mysql = require("mysql");

const fs = require("fs");
const VisualRecognitionV3 = require("ibm-watson/visual-recognition/v3");
const { IamAuthenticator } = require("ibm-watson/auth");

const app = express();

const SELECT_ALL_USER_QUERY = "SELECT * FROM usuarios";

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "cekal",
});

connection.connect((err) => {
  if (err) {
    return err;
  }
});

app.use(cors());

app.get("/", (req, res) => {
  res.send("vá para /user para ver os usuarios");
});

app.get("/user", (req, res) => {
  connection.query(SELECT_ALL_USER_QUERY, (err, resultados) => {
    if (err) {
      return res.send(err);
    } else {
      return res.json({
        data: resultados,
      });
    }
  });
});

app.get("/user/add", (req, res) => {
  const { nome, sobrenome, email } = req.query;
  const INSERT_USER_QUERY = `INSERT INTO usuarios(nome, sobrenome, email) VALUES('${nome}', '${sobrenome}', '${email}')`;
  connection.query(INSERT_USER_QUERY, (err, resultados) => {
    if (err) {
      return res.send(err);
    } else {
      return res.send("usuario adicionado com sucesso");
    }
  });
});

const visualRecognition = new VisualRecognitionV3({
  version: "2018-03-19",
  authenticator: new IamAuthenticator({
    apikey: "OoON2Y_o8AdF1mcQxvJWNDBAmjzudrdHxGd4E5r4Vxp9",
  }),
  url: "https://api.us-south.visual-recognition.watson.cloud.ibm.com/instances/6a2cddb7-ef6d-4b5b-b988-c9f52c6a88fd",
});

const classifyParams = {
  url: "https://ibm.biz/Bd2NPs",
  classifierIds: ["food"],
};

visualRecognition
  .classify(classifyParams)
  .then((response) => {
    const classifiedImages = response.result;
    console.log(JSON.stringify(classifiedImages, null, 2));
  })
  .catch((err) => {
    console.log("error:", err);
  });

app.listen(4000, () => {
  console.log("o servidor está rodando na porta 4000");
});
