# Sql-Debezium-Kafka-poc

This repository holds the yml files for deploying zookeeper, kafka, and mssql to Kubernetes in the k8s folder. The dockerfile to containerize debezium connector is also added in the debezium_dockerfile folder. The PersistentStorage folder has the yml files for creating and mounting a pvc to the debezium pod for persistent offset and FileDatabaseHistory storage. 

Please refer to the doc for the steps to deploy, and for instructions on running and modifying the debezium connector config properties. (https://docs.google.com/document/d/1EeKGXo_yLit0kUHU73BQlMkUdJNeMQo254urZs7gmmI/edit?usp=sharing)
