Docker Swarm
=========

Create Docker Swarm clusters with Ansible.

Requirements
------------

It's assumed that Docker will be installed on each of the hosts to be included in the cluster.

Role Variables
--------------

`install_type` is the most important variable in this cookbook as it will decide the role the host will play in the Swarm . The options here are `first_manager`, `manager` or `worker`.

Example Playbook
----------------

``` yaml
- name: Set first swarm manager
  hosts: swarm-first-manager
  become: true
  roles:
    - {role: swarm, install_type: first_manager}

- name: Add managers
  hosts: swarm-manager
  become: true
  roles:
    - {role: swarm, install_type: manager}

- name: Add workers
  hosts: swarm-worker
  become: true
  roles:
    - {role: swarm, install_type: worker}
```

Testing
-------

Dependencies:

* Vagrant
* Virtualbox
* Ruby

This project uses [Test Kitchen][tk] to create, provision and test the role using [Inspec][is]. With the dependencies installed you can run the tests with:

* `make install` - download all test dependencies
* `make test` - test (destroy, create, converge, setup, verify and destroy) one or more instances

Author Information
------------------

* Sion Williams (sion.williams@ext.ons.gov.uk)

Additional Resources
--------------------

* [ansible role development](https://blog.superk.org/home/ansible-role-development)


[tk]: https://kitchen.ci/
[is]: https://www.inspec.io/
[cis]: https://www.cisecurity.org/benchmark/docker/
