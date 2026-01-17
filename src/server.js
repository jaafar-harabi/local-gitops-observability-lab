import "./otel.js";
import express from "express";

const app = express();
const port = process.env.PORT || 3000;

app.get("/healthz", (_req, res) => res.status(200).json({ status: "ok" }));
app.get("/", (_req, res) => res.send("local-gitops-observability-lab ✅"));

app.listen(port, () => console.log(`listening on ${port}`));
