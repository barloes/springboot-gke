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

# TODO

- [x] Restful API Controller
- [x] Logging
- [x] Metrics
- [ ] Automate build and deploy (gcp cloud build and deploy into GKE)
- [ ] Kafka integration
- [ ] Redis integration
- [ ] MongoDB integration
- [ ] MySQL integration