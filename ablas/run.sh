#!/bin/bash

CONTAINER_NAME="hpc_ablas_node_$(openssl rand -hex 2)"
docker run -it --name "$CONTAINER_NAME" hpc_node:ablas bash
