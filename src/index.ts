import express, { Request, Response } from "express";

const app = express();

const PORT = 3000;

app.get("/api/users", (request: Request, response: Response, next) => {
  response.send({ some: "json" });
});

app.listen(PORT, () => {
  console.log(`Example app ladasistening on port ${PORT}`);
});
