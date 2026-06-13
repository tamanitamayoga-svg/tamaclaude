@echo off
echo ===================================
echo  たまにたまヨガ HP デプロイ
echo ===================================
echo.
git -C "%~dp0" add -A
git -C "%~dp0" commit -m "update"
git -C "%~dp0" push origin main
echo.
echo 完了！ 1〜2分後に以下のURLで確認してください:
echo https://tamanitamayoga-svg.github.io/tamaclaude/
echo.
pause
