#!/bin/bash

curl -fLo irpb-files.zip https://www.morikita.co.jp/books/download/2357
unzip irpb-files.zip
rm -f irpb-files.zip

curl -fLo jawiki.doc2vec.dmpv300d.tar.bz2 https://www.dropbox.com/s/njez3f1pjv9i9xj/jawiki.doc2vec.dmpv300d.tar.bz2?dl=0
tar xf jawiki.doc2vec.dmpv300d.tar.bz2
mv jawiki* irpb-files/data/
