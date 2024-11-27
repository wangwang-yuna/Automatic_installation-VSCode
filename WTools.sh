cat .wtools.txt
echo "选择你需要的功能"
read choice
if [ "$choice" -eq 1 ]; then
    bash ./auto_install.sh
    echo "安装完成"
    exit 0
elif [ "$choice" -eq 2 ]; then
    bash ./uninstall.sh
elif [ "$choice" -eq 3 ]; then
    bash ./jiben.sh
elif [ "$choice" -eq 4 ]; then
    bash ./DMynana.sh
else 
    echo "输入错误，请重新输入"
fi
