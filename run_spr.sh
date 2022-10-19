export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
mkdir -p runs

python3 spr/bm25_retrieval.py \
  -k 1000 -k1 0.82 -b 0.68 \
  -index /tmp2/trec/cast/indexes/cast2020_psg \
  -query data/2020_evaluation_topics_v1.0.jsonl \
  -output runs/cast20.automatic.rewrite.spr.top1000.trec \
  -qval automatic_rewritten &

python3 spr/bm25_retrieval.py \
  -k 1000 -k1 0.82 -b 0.68 \
  -index /tmp2/trec/cast/indexes/cast2020_psg \
  -query data/2020_evaluation_topics_v1.0.jsonl \
  -output runs/cast20.manual.rewrite.spr.top1000.trec \
  -qval manual_rewritten
