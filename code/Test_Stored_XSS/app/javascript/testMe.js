var imgsrc = localStorage.get("imgsrc");
document.write('<img id="myImage" src=' + imgsrc +' ></img>');

const libxml = require('libxmljs');
const express = require('express');
const app = express()
const bodyParser = require('body-parser');
app.use(bodyParser);

app.post('/import', function(req, res) {
	var xml = req.files.xmlFile.data;
	var importedObject = libxml.parseXml(xml, { noent: true });
}