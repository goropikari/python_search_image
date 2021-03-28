# Pythonではじめる　情報検索プログラミング

Pythonではじめる　情報検索プログラミング(ISBN: 978-4-627-81861-3) 用 Docker image

```bash
bash script/setup.sh  # 本のスクリプト(notebook)をダウンロード
docker-compose build
docker-compose up  # 表示される URL にアクセス
```


Dockerhub に image push

```bash
docker login
docker build -t goropikari/python_search .
docker push goropikari/python_search:latest
```
