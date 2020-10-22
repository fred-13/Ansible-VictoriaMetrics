## Ansible Role for VictoriaMetrics TSDB deployment. Tested on CentOS 7.

### Deploy VictoriaMetrics single node (run command on host):
```
ansible-playbook playbook-single-node.yml
```
### Deploy VictoriaMetrics in cluster mode:
```
ansible-playbook -i hosts playbook-cluster.yml
```
### Deploy HAProxy with Keepalived:
```
ansible-playbook -i hosts playbook-haproxy.yml
```
