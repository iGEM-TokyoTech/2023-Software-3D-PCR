FROM python:3.9.7-buster
# USER root

RUN apt-get update

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip install jupyterlab
RUN pip install pandas
RUN pip install numpy
RUN pip install matplotlib
RUN pip install scipy
RUN pip install seaborn
# WORKDIR /src

# Arial.ttf をコンテナ内の適切なディレクトリにコピー
COPY Arial.ttf /usr/share/fonts/truetype/

# フォントキャッシュを更新
RUN fc-cache -f -v

# matplotlib のフォントリストを更新
RUN python -c "import matplotlib.pyplot as plt; plt.rcParams['font.sans-serif'] = ['Arial']; plt.rcParams['font.family'] = 'sans-serif'"
