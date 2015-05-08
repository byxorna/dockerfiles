# Config

You only really need to specify where your Elasticsearch cluster lives, with `--elasticsearch http://my-cluster:9292/`

# Launch

Launch kibana with `docker run -p 5601:5601 byxorna/kibana:4.0.2 --elasticsearch http://my-cluster:9292/`
