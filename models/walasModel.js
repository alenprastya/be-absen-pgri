import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./userModel.js";
import Kelas from "./kelasModel.js";
const { DataTypes } = Sequelize;

const Walas = db.define(
  "walas",
  {
    nip: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true,
      },
    },
    nama_walas: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    kode_kelas: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
  }
);
Users.hasMany(Walas);
Walas.belongsTo(Users, { foreignKey: "userId" });

Kelas.belongsTo(Walas, { foreignKey: "kode_kelas", targetKey: "kode_kelas" });

export default Walas;
