# clean
rm -rf ~/miniconda3.sh && \
rm -rf ~/miniconda3 && \
# download
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3.sh && \
# install
/bin/bash ~/miniconda3.sh -b -p ~/miniconda3 && \
# clean
rm -rf ~/miniconda3.sh && \
# conda init
~/miniconda3/bin/conda init bash zsh && \
# library
~/miniconda3/bin/pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ && \
~/miniconda3/bin/pip install --no-cache-dir ipdb graphviz cython && \
~/miniconda3/bin/pip install --no-cache-dir scipy numpy scikit-learn pandas matplotlib && \
~/miniconda3/bin/pip install --no-cache-dir torch==1.6.0+cu101 torchvision==0.7.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html && \
~/miniconda3/bin/pip install --no-cache-dir pycocotools tb-nightly torchtext && \
~/miniconda3/bin/pip install --no-cache-dir --extra-index-url https://developer.download.nvidia.com/compute/redist/ nvidia-dali-cuda100==0.25.0 && \
echo '    ______        _                ______          ___                __' && \
echo '   / ____/___    (_)___  __  __   / ____/___  ____/ (_)___  ____ _   / /' && \
echo '  / __/ / __ \  / / __ \/ / / /  / /   / __ \/ __  / / __ \/ __ `/  / / ' && \
echo ' / /___/ / / / / / /_/ / /_/ /  / /___/ /_/ / /_/ / / / / / /_/ /  /_/  ' && \
echo '/_____/_/ /_/_/ /\____/\__, /   \____/\____/\__,_/_/_/ /_/\__, /  (_)   ' && \
echo '           /___/      /____/                             /____/         '
