# Config

You only really need to specify where your Elasticsearch cluster lives, via the environment: `-e ELASTICSEARCH=http://my-cluster:9292/`

# Launch

Launch kibana with `docker run -p 8080:80 -e ELASTICSEARCH=http://my-cluster:9292/ byxorna/kibana3:latest` and access it on :8080.
