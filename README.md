# Patroni Cluster Lab

A **High-Availability PostgreSQL cluster** setup using [Patroni](https://patroni.readthedocs.io/) and [etcd](https://etcd.io/).  
This repository is a lab environment to demonstrate how to run a PostgreSQL cluster with automatic failover, leader election, and service discovery using Patroni + etcd.

---

## 🚀 Features
- PostgreSQL cluster with automatic leader election & failover
- etcd as Distributed Consensus Store (DCS)
- Systemd unit files for `etcd` and `patroni`
- Example configuration for a **3-node etcd cluster** + **3-node Patroni cluster**
- Ready-to-use lab environment (VMs, manual deployment)

---

## 🏗️ Architecture

