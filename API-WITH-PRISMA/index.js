// index.js

const express = require("express");
const userRouter = require("./userRouter");

const app = express();

app.use(express.json());




// Use the user router
app.use("/users", userRouter);

// Root route for testing
app.get("/", (req, res) => {
  res.send("Welcome to the API");
});

app.listen(3000, () => console.log(`Server running on port 3000`));
