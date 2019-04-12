# CockroachDB

## Introduction

CockroachDB container `FROM scratch`. It's less than half the size of the official image:

```bash
REPOSITORY               TAG     IMAGE ID      CREATED         SIZE
rms1000watt/cockroachdb  v2.1.6  a1f50bc1617c  12 minutes ago  147MB
cockroachdb/cockroach    v2.1.6  5a5e5c38ddc5  4 weeks ago     320MB
```

## Contents

- [Build](#build)
- [Run](#run)

## Build

Build the container:

```bash
./build.sh
```

## Run

Run the container (and open UI):

```bash
./run.sh
```
