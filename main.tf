module "task37-Dynamic_VPC_Setup " {
    source="./Modules/Dynamic_VPC"
    sub_count=2
    enable_dns64=false
    ipv6_native=false
    ipv6_address_on_creation=false
    classiclink=false
    tenancy="default"
    dns_hostname=false
    dns_support=false
    sub_az_a_name=["subnet-1-vpc-1-A","subnet-1-vpc-2-A","subnet-2-vpc-1-A","subnet-2-vpc-2-A"]  
    sub_az_a_cidr=[]
    sub_az_b_name=["subnet-1-vpc-1-B","subnet-1-vpc-2-B","subnet-2-vpc-1-B","subnet-2-vpc-2-B"]
    sub_az_b_cidr=[]
    vpc_cidr=[]
    vpc_name=["vpc-1", "vpc-2"]

}