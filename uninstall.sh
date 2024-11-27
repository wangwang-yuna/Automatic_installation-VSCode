echo "是否卸载VS Code？(y/n)"
read answer
if [ "$answer" == "y" ]; then
    sudo apt-get remove visual-studio-code
    echo "VS Code卸载成功！"
else
    echo "取消卸载！"
fi