-- CreateTable
CREATE TABLE "days" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "date" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "habit_week_day" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "habit_id" TEXT NOT NULL,
    "week_day" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "days_habits" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "day_id" TEXT NOT NULL,
    "habit_id" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "days_date_key" ON "days"("date");

-- CreateIndex
CREATE UNIQUE INDEX "habit_week_day_habit_id_week_day_key" ON "habit_week_day"("habit_id", "week_day");

-- CreateIndex
CREATE UNIQUE INDEX "days_habits_day_id_habit_id_key" ON "days_habits"("day_id", "habit_id");