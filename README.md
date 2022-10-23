# kc-devops-6-cicd-jenkins-system

Files needed to build a normalized Jenkins instance in AWS

## Prepare environment

### 1. Instance creation in AWS

Characteristics of the required EC2 instance:
- Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
- Architecture 64-bit (x86)
- t2.large (2 vCPU, 8GiB memory)
- Create a key pair to connect with ssh (download the .pem file to your computer)
- Network settings:
  - Create security group
  - Mark Allow SSH traffic from your IP
  - Mark Allow HTTP traffic from your IP
- Storage: Create 30GiB gp2 root volume (non encrypted)

Once created connect with the machine > go to EC2 dashboard > select the machine just created > connect > ssh client. Follow instructions to connect with it ussing ssh and the key pair you have created

### 2. Instance provisioning
1. Copy the contents of [machineProvisioning.sh](./machineProvisioning.sh) in a file in the machine.
1. Give the file execution permissions with `sudo chmod +x machineProvisioning.sh`
1. Execute it. It will prompt for some information

## Jenkins structure and builds generated by JobDSL
![Diagram](./Diagram.png)
