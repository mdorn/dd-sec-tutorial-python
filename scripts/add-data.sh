#!/bin/bash
curl -X GET 'localhost:8080/notes'
curl -X POST 'http://localhost:8080/notes?desc=Im%20A%20Note'
curl -X POST 'http://localhost:8080/notes?desc=Im%20A%20Note%20With%20Date&add_date=y'
curl -X POST 'http://localhost:8080/notes?desc=I%20am%20Also%20A%20Note'
curl -X GET 'localhost:8080/notes'
