echo "欢迎使用wtools"
echo "在使用本项目之前，先要clone项目到本地"
echo "是否clone项目到本地？（y/n）"
read clone_flag
if [ $clone_flag == "y" ]; then
    apt install git
    git clone https://github.com/wangwang-yuna/Automatic_installation-VSCode.git
    cd Automatic_installation-VSCode
    chmod 777 ./WTools.sh
    ./WTools.sh
else
    echo "未clone项目到本地，退出安装"
fi
