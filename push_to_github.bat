@echo off
echo [CHECK] Checking Git status...
git status

:commit
set /p msg="Enter commit message: "
if "%msg%"=="" set msg="Update GCP Lab Report"

echo [1/4] Adding files...
git add .

echo [2/4] Committing...
:: Dùng tham số -a để tránh lỗi partial commit trong khi merge
git commit -a -m %msg%

echo [3/4] Syncing with Remote...
:: Rebase giúp lịch sử commit sạch hơn, đúng chuẩn Senior
git pull --rebase origin main

echo [4/4] Pushing to GitHub...
git push origin main

echo ------------------------------------------
echo SUCCESS: Project is now in sync with GitHub.
pause