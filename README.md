### Ansible Role for VictoriaMetrics TSDB deployment. Tested on CentOS 7.

#### Deploy VictoriaMetrics single node (run command on host):
```bash
    ansible-playbook playbook-single-node.yml
```
#### Deploy VictoriaMetrics in cluster mode:
```bash
    ansible-playbook -i hosts playbook-cluster.yml
```
