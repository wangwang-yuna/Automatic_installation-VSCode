apt update && apt install -y git curl wget -y && apt upgrade -y
echo "开始安装JDK 23开发环境"
    wget https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb
    sudo apt-get install ./jdk-23_linux-x64_bin.deb
    echo "JDK 23开发环境安装完成"
    echo "开始安装Python3开发环境"
    sudo apt-get install python3 python3-pip python3-dev pythin3-tk python3-venv
    echo "Python3开发环境安装完成"
    echo "是否pip配置清华源镜像源？(y/n)"
    read answer
    if [ "$answer" == "y" ]; then
        echo "开始配置pip镜像源"
        pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
        echo "pip镜像源配置完成"