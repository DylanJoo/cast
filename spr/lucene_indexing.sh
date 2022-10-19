export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# in 2020
python3 -m pyserini.index.lucene \
  --collection JsonCollection \
  --input /tmp2/trec/cast/2020/cast2020_psg/ \
  --index /tmp2/trec/cast/indexes/cast20_psg/ \
  --generator DefaultLuceneDocumentGenerator \
  --threads 9 --storeDocvectors
