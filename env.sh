rm -rf ~/miniconda3.sh && \
rm -rf ~/miniconda3 && \
proxychains4 wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3.sh && \
/bin/bash ~/miniconda3.sh -b -p ~/miniconda3 && \
rm -rf ~/miniconda3.sh && \
~/miniconda3/bin/pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
~/miniconda3/bin/pip install torch torchvision && \
~/miniconda3/bin/pip install ipython pyhocon future tb-nightly && \
~/miniconda3/bin/pip install git+https://github.com/chenyaofo/flame.git@master && \
echo '    ______        _                ______          ___                __' && \
echo '   / ____/___    (_)___  __  __   / ____/___  ____/ (_)___  ____ _   / /' && \
echo '  / __/ / __ \  / / __ \/ / / /  / /   / __ \/ __  / / __ \/ __ `/  / / ' && \
echo ' / /___/ / / / / / /_/ / /_/ /  / /___/ /_/ / /_/ / / / / / /_/ /  /_/  ' && \
echo '/_____/_/ /_/_/ /\____/\__, /   \____/\____/\__,_/_/_/ /_/\__, /  (_)   ' && \
echo '           /___/      /____/                             /____/         '
