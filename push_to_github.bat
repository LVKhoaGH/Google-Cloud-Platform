@echo off
set /p msg="Enter commit message (default: Update GCP Lab Report): "
if "%msg%"=="" set msg="Update GCP Lab Report"

echo [1/4] Adding files...
git add .

echo [2/4] Committing changes...
git commit -m "%msg%"

echo [3/4] Pulling latest changes from remote...
git pull origin main

echo [4/4] Pushing to GitHub...
git push origin main

echo ------------------------------------------
echo DONE! Project updated successfully.
pause