# Springboot webflux starter

This is a Springboot webflux starter project.

# Command

```
mvn clean install
mvn spring-boot:run --debug
```

# Metrics

```
http://localhost:8080/actuator/metrics/http.server.requests
```

# CICD

```agsl
gcloud builds submit --config=cloudbuild.yaml \
    --substitutions=_LOCATION="asia-southeast1",_IMAGE="web-stg",_PROJECT_ID="poc-testing-personal",_REPOSITORY="personal-docker"


#    substitutions:
#      _LOCATION: asia-southeast1
#      _PROJECT_ID: poc-testing-personal
#      _REPOSITORY: personal-docker
#      _IMAGE: web-stg

```

# TODO

- [x] Restful API Controller
- [x] Logging
- [x] Metrics
- [ ] Automate build and deploy (gcp cloud build and deploy into GKE)
- [ ] Kafka integration
- [ ] Redis integration
- [ ] MongoDB integration
- [ ] MySQL integration