# docker-kibana4
This Dockerfile contains the Kibana Dashboard. The default Kibana port 5601 is exposed.

#Docker Build
Update the kibana.yml with Elastic Search URL Instance.

1. Replace "ELASTIC_SEARCH_URL:PORT" => "http://elasticsearchurl:9200"

2. docker build -t kibana .

#Docker Run
docker run -d -p 5601:5601 --name kibana kibana

#Kibana Dashboard
You can able to view kibana dashboard:

HOSTURL:5601/
