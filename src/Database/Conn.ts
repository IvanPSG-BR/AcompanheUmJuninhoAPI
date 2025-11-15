import { PrismaClient } from '../generated/prisma';
import 'dotenv/config';

const SGBD = process.env.SGBD;
const DB_HOST = process.env.POSTGRESQL_HOST;
const DB_PORT = process.env.POSTGRESQL_PORT;
const DB_USER = process.env.POSTGRESQL_USER;
const DB_PASSWORD = process.env.POSTGRESQL_PASSWORD;
const DB_DATABASE = process.env.POSTGRESQL_DATABASE;
const DB_URL = SGBD + "://" + DB_USER + ":" + DB_PASSWORD + "@" + DB_HOST + ":" + DB_PORT + "/" + DB_DATABASE;

function db() {
  try {
    const prisma = new PrismaClient({
      datasources: {
        db: {
          url: DB_URL,
        },
      },
    });

    return prisma
  } catch (e: unknown) {
    console.log("Erro ao instanciar o Prisma: " + e)
  }
}

export default db;
