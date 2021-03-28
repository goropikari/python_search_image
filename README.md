# Pythonではじめる　情報検索プログラミング

Pythonではじめる　情報検索プログラミング(ISBN: 978-4-627-81861-3) 用 Docker image

```bash
bash script/setup.sh  # 本のスクリプト(notebook)をダウンロード
docker-compose build
docker-compose up  # 表示される URL にアクセス
```


日本語Wikipediaで学習したdoc2vecモデル(dmpv300d)
- https://yag-ays.github.io/project/pretrained_doc2vec_wikipedia/



Dockerhub に image push

```bash
docker login
docker build -t goropikari/python_search .
docker push goropikari/python_search:latest
```


# コードの修正が必要なところ

Gensim 3.x から 4 へのアップデートに寄る変更点
- https://github.com/RaRe-Technologies/gensim/wiki/Migrating-from-Gensim-3.x-to-4


# chapter 10
Listing 10.1

```diff
< w2v_model = Word2Vec(training_data, size=3, window=2, sg=1, min_count=1)
> w2v_model = Word2Vec(training_data, vector_size=3, window=2, sg=1, min_count=1)
```


# appendix
A.5.2 語の相互関係の可視化

```diff
< W_id = [model.wv.vocab[k].index for k in W]

> W_id = [model.wv.key_to_index[k] for k in W]
```
