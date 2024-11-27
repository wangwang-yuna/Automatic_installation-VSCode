echo "开始安装VS Code"
sudo apt-get update
sudo apt-get install software-properties-common apt-transport-https wget
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code_1.95.3-1731513102_amd64.deb
sudo apt-get install ./code_1.95.3-1731513102_amd64.deb
echo "安装完成"
echo "是否自动安装java和python3开发环境？(y/n)"
read answer
if [ "$answer" == "y" ]; then
    echo "开始安装JDK 23开发环境"
    wget https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb
    sudo apt-get install ./jdk-23_linux-x64_bin.deb
    echo "JDK 23开发环境安装完成"
    echo "开始安装Python3开发环境"
    sudo apt-get install python3 python3-pip python3-dev python3-tk python3-venv  # 修正了拼写错误
    echo "Python3开发环境安装完成"
    echo "是否pip配置清华源镜像源？(y/n)"
    read answer
    if [ "$answer" == "y" ]; then
        echo "开始配置pip镜像源"
        pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
        echo "pip镜像源配置完成"
    fi
fi
