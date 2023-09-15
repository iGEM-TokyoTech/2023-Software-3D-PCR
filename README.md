# 概要
2023 年 iGEM TokyoTech の 3D-PCR モデルに使用するコードたち

```
docker-compose up --build
```
で jupyterlab が立ち上がるので，そこで動かしてください．

# ディレクトリ構成
<pre>
.
├── Dockerfile
├── README.md
├── data
├── docker-compose.yaml
└── notebooks
    ├── evaluation.ipynb
    ├── solver_binary.ipynb
    └── solver_continuous.ipynb
</pre>
- evaluation.ipynb では，arrangement する場合としない場合の比較をしている(データ生成は指数分布に従う)
- solver_binary.ipynb では，positive か negative になる確率が **binary** で与えられている場合を考えている
- solver_continuous.ipynb では，positive か negative になる確率が**指数分布**で与えられる場合を考えている