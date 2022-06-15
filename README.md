# Cybersecurity-Bootcamp-Project-1

Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

<img width="1033" alt="Project_1_Diagram" src="https://user-images.githubusercontent.com/99222430/173910754-a6443fd4-4516-43a7-9032-305f758ae335.png">


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YML file may be used to install only certain pieces of it, such as Filebeat.

  - [ELK Install](https://github.com/brooksbuttry/Cybersecurity-Bootcamp-Project-1/blob/main/Ansible/install-elk.yml)
  - [Metricbeat Playbook](https://github.com/brooksbuttry/Cybersecurity-Bootcamp-Project-1/blob/main/Ansible/metricbeat-playbook.yml)
  - [Filebeat Playbook](https://github.com/brooksbuttry/Cybersecurity-Bootcamp-Project-1/blob/main/Ansible/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network. Load balancers ensure the availability of an environment through distribution of incoming data to web servers. Jump boxes, for example, allow for easy control over multiple systems and servers. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.

- Filebeat watches for log files and collects log events.
- Metricbeat records metrics and statistical data from the system and services running on the server. 

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|-----------|----------|-------------|------------------|
| Jump Box  | Gateway  | 10.0.0.1   | Linux (Ubuntu)   |
| Web 1     | Server   | 10.0.0.5   | Linux (Ubuntu)   |
| Web 2     | Server   | 10.0.0.6   | Linux (Ubuntu)   |
|ELK Server |Log Server| 10.1.0.4   | Linux (Ubuntu)   |

Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

- Personal IP Address

Machines within the network can only be accessed by the Jump Box Provisioner VM.

- The Elk Server machine can have access from my personal IP through port 5601.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box       |     Yes           | Personal      |
| Load Balancer  |     Yes           |    Open       |
|  Web 1         |      No           |  10.0.0.5     |
|  Web 2         |      No           |   10.0.0.6    |
|  Elk Server    |     Yes           |   Personal    |

Elk Configuration 

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because with Ansible, you can create and deploy multiple servers without having to deal with a physical server.

The playbook implements the following tasks:
- Install Docker.io and pip3
- Increase virtual machine memory
- Download and configure elk docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<img width="869" alt="docker ps" src="https://user-images.githubusercontent.com/99222430/173910898-cd9220f9-4196-45fb-b507-9a26d9fa51b8.png">


Target Machines & Beats

This ELK server is configured to monitor the following machines:

Web 1 (10.0.0.5)
Web 2 (10.0.0.6)

We have installed the following Beats on these machines:

Filebeat
Metricbeat

These Beats allow us to collect the following information from each machine:

- Filebeat monitors the log directories and log files, captures them, and sends them ahead to Elasticsearch or Logstash. An example would be failed login attempts. The failed login attempts will be caught by Filebeat and displayed in Kibana for easy visualization.

- Metricbeat collects metrics and statistics on the system and servers. For example, we can use Metricbeat to monitor CPU usage or monitor other parts of a systems health.

Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:

Copy the configuration file from the Ansible container to the Web VM’s.

Update the /etc/ansible/hosts file to include the IP address of the Elk Server and web servers.

- Run the playbook, and navigate to http://[ELk_VM_Public_IP]:5601/app/kibana to check that the installation worked as expected.

Which file is the playbook? 
filebeat-playbook.yml
metricbeat-playbook.yml

Where do you copy it?
/etc/ansible

Which file do you update to make Ansible run the playbook on a specific machine? 
Filebeat-config.yml
How do I specify which machine to install the ELK server on versus which to install Filebeat on?
Updating the /etc/ansible/hosts file with the IP addresses of the web and elk servers.

_Which URL do you navigate to in order to check that the ELK server is running?

http://[Elk_VM_Public_IP]:5601/app/kibana.
