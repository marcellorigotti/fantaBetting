const cors = require('cors');
const express = require('express');
const app = express();
const PORT = 8080;

//middleware

app.use(cors());
app.use(express.json());

//routes
app.use("/authentication", require("./routes/jwtAuth"));

app.use("/dashboard", require("./routes/dashboard"));


app.listen(
    PORT,
    () => console.log(`App is live on https://localhost:${PORT}`)
)