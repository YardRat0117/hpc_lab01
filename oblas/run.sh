#!/bin/bash

CONTAINER_NAME="hpc_oblas_node_$(openssl rand -hex 2)"
docker run -it --name "$CONTAINER_NAME" hpc_node:oblas bash
