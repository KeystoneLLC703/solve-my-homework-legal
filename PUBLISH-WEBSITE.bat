@echo off
title Publish the website
cd /d C:\dev\solve-my-homework-legal-publish-20260821

echo ===========================================================
echo   PUBLISH THE WEBSITE  (www.solvemyhomeworkai.com)
echo ===========================================================
echo.
echo These changes are finished on this computer but have never
echo been sent to GitHub, which is why the live site is out of date:
echo.
git --no-pager log --oneline origin/main..HEAD
echo.
echo A GitHub login window may appear. That is normal - it is
echo Windows asking, not this script. Nothing is sent until you
echo sign in.
echo.
pause

git push origin main

echo.
if errorlevel 1 (
  echo ---------------------------------------------------------
  echo  IT DID NOT PUBLISH. The message above says why.
  echo  Nothing on the live site changed.
  echo ---------------------------------------------------------
) else (
  echo ---------------------------------------------------------
  echo  PUBLISHED. GitHub Pages rebuilds in about a minute.
  echo.
  echo  Then check:
  echo    https://www.solvemyhomeworkai.com/
  echo    - the App Store and Google Play buttons should now be
  echo      real links, not jumps back to the same section
  echo    https://www.solvemyhomeworkai.com/terms.html
  echo ---------------------------------------------------------
)
echo.
pause
