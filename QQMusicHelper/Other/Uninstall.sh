# !/bin/bash

app_name="QQMusic"
framework_name="libQQMusicHelper"
app_bundle_path="/Applications/${app_name}.app/Contents/MacOS"
app_executable_path="${app_bundle_path}/QQMusic"
app_executable_backup_path="${app_executable_path}_backup"
framework_path="${app_bundle_path}/${framework_name}.dylib"
# 备份QQ原始可执行文件
if [ -f "$app_executable_backup_path" ]
then
rm "$app_executable_path"
rm -rf "$framework_path"
mv "$app_executable_backup_path" "$app_executable_path"
echo "\n\t卸载成功"
else
echo "\n\t未发现QQ音乐小助手"
fi