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
     +-----------------------------+
     |        etcd Cluster         |
     |  192.168.220.140-142 (3N)  |
     +-------------+---------------+
                   |
                   v
     +-----------------------------+
     |       Patroni Cluster       |
     |  192.168.220.143-145 (3N)  |
     +-------------+---------------+
                   |
                   v
     +-----------------------------+
     |       PostgreSQL HA DB      |
     |   Leader + Followers (2N)   |
     +-----------------------------+

- **etcd cluster** is used as DCS to store cluster state, leader key, and configuration.
- **Patroni cluster** connects to etcd for consensus and manages PostgreSQL failover.
- **PostgreSQL nodes** are managed by Patroni, ensuring only one leader at a time.

---
📂 Repository Structure

## Repository Structure

patroni-cluster-lab/
├── etcd/
│ └── etcd.conf.yml # etcd cluster config
├── patroni/
│ └── patroni.yml # Patroni cluster config
├── docs/
│ └── setup-guide.md # step-by-step installation
└── README.md # this file
---

## ⚙️ Requirements
- Linux (tested on Rocky 9.6)
- Python ≥ 3.9
- PostgreSQL ≥ 13 (tested up to v17)
- etcd ≥ 3.6
- Patroni ≥ 4.0

---

## 🔧 Setup Instructions (Lab)




