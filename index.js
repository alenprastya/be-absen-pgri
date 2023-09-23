import express from "express";
import cors from "cors";
import session from "express-session";
import sequelizeStore from "connect-session-sequelize";
import db from "./config/Database.js";
import UserRoute from "./routes/userRoute.js";
import AbsensiRoute from "./routes/absenRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
import WaliRote from "./routes/WaliRoute.js";
import SiswaRoute from "./routes/siswaRoute.js";
import KelasRoute from "./routes/kelasRoute.js";

const SESS_SECRET = "12345";
const PORT = "5000";
const app = express();

const sessionStore = sequelizeStore(session.Store);

const store = new sessionStore({
  db: db,
});

db.sync();
app.use(
  session({
    secret: SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: "auto",
    },
  })
);

app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);

app.use(express.json());
app.use(UserRoute);
app.use(AbsensiRoute);
app.use(AuthRoute);
app.use(WaliRote);
app.use(SiswaRoute);
app.use(KelasRoute);

// app.use(WalasRoute);

app.listen(PORT, () => {
  console.log(`server Berjalan di http://localhost`, PORT);
});
