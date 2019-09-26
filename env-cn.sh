# clean
rm -rf ~/miniconda3.sh && \
rm -rf ~/miniconda3 && \
# download
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3.sh && \
# install
/bin/bash ~/miniconda3.sh -b -p ~/miniconda3 && \
# clean
rm -rf ~/miniconda3.sh && \
# show channel url
~/miniconda3/bin/conda config --set show_channel_urls yes && \
# utilities
~/miniconda3/bin/conda install -y setuptools cython future ipython -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main && \
~/miniconda3/bin/conda install -y pytest graphviz jinja2 -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main && \
~/miniconda3/bin/conda install -y ipdb pyhocon glances -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge && \
# image library
~/miniconda3/bin/conda install -y accimage pillow -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge && \
# development
~/miniconda3/bin/conda install -y pylint autopep8 mypy flake8 yapf black -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge && \
# science computation
~/miniconda3/bin/conda install -y scipy numpy scikit-learn pandas matplotlib -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main && \
# torch and torchvision
~/miniconda3/bin/conda install -y pytorch torchvision cudatoolkit=10.0 -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch && \
# clean the caches
~/miniconda3/bin/conda clean -ay && \
# conda init
~/miniconda3/bin/conda init bash zsh && \
# set pip mirror
~/miniconda3/bin/pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
# standalone tensorboard, only available on pypi
~/miniconda3/bin/pip install --no-cache-dir tb-nightly && \
# my library
~/miniconda3/bin/pip install --no-cache-dir git+https://github.com/chenyaofo/flame.git@master && \
echo '    ______        _                ______          ___                __' && \
echo '   / ____/___    (_)___  __  __   / ____/___  ____/ (_)___  ____ _   / /' && \
echo '  / __/ / __ \  / / __ \/ / / /  / /   / __ \/ __  / / __ \/ __ `/  / / ' && \
echo ' / /___/ / / / / / /_/ / /_/ /  / /___/ /_/ / /_/ / / / / / /_/ /  /_/  ' && \
echo '/_____/_/ /_/_/ /\____/\__, /   \____/\____/\__,_/_/_/ /_/\__, /  (_)   ' && \
echo '           /___/      /____/                             /____/         '