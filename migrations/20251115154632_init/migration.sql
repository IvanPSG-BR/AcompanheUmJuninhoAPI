-- CreateEnum
CREATE TYPE "ROLE" AS ENUM ('JUNINHO', 'MENTOR');

-- CreateEnum
CREATE TYPE "AGE" AS ENUM ('UNDERAGE', 'ADULT');

-- CreateEnum
CREATE TYPE "GENDER" AS ENUM ('MALE', 'FEMALE', 'OTHER');

-- CreateEnum
CREATE TYPE "STATUS" AS ENUM ('PENDING', 'ACCEPTED', 'REFUSED');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" "ROLE" NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Juninho" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "desc" TEXT,
    "age" "AGE" NOT NULL,
    "gender" "GENDER" NOT NULL,
    "subjectTags" TEXT[],

    CONSTRAINT "Juninho_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Mentor" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "desc" TEXT,
    "expYears" INTEGER NOT NULL,
    "gender" "GENDER" NOT NULL,
    "subjectTags" TEXT[],
    "disponibility" TEXT[],
    "juninhosAmount" INTEGER NOT NULL,

    CONSTRAINT "Mentor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Match" (
    "id" SERIAL NOT NULL,
    "juninhoId" INTEGER NOT NULL,
    "mentorId" INTEGER NOT NULL,
    "status" "STATUS" NOT NULL,

    CONSTRAINT "Match_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Message" (
    "id" SERIAL NOT NULL,
    "senderId" INTEGER NOT NULL,
    "receiverId" INTEGER NOT NULL,
    "content" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Message_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Journal" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "progressEntry" TEXT NOT NULL,
    "todoEntry" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Journal_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Juninho_userId_key" ON "Juninho"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "Mentor_userId_key" ON "Mentor"("userId");

-- AddForeignKey
ALTER TABLE "Juninho" ADD CONSTRAINT "Juninho_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mentor" ADD CONSTRAINT "Mentor_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
