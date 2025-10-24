import express from "express";
import path from "path";
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const app = express();
const PORT = 3000;

// ✅ Pastikan Express tidak melakukan redirect .html
app.use(express.static(path.join(__dirname, "public"), {
  extensions: ['html'], // agar bisa akses tanpa ekstensi
  redirect: false       // nonaktifkan redirect otomatis
}));

app.listen(PORT, () => {
  console.log(`✅ Server running at http://localhost:${PORT}`);
});