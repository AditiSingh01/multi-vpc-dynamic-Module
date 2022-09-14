resource "aws_vpc" "vpc" {
    cidr_block       = var.vpc_cidr[count.index]
    enable_dns_support  = var.dns_support
    enable_dns_hostnames = var.dns_hostname
    instance_tenancy = var.tenancy
    enable_classiclink = var.classiclink
    count = length(var.vpc_cidr)
    tags = {
      Name = var.vpc_name[count.index]
    }
}


locals {
  vpc_ids = tolist(aws_vpc.vpc.*.id)
}

resource "aws_subnet" "sub-a" {
    vpc_id     = aws_vpc.vpc[count.index % length(var.vpc_cidr)].id
    assign_ipv6_address_on_creation = var.ipv6_address_on_creation
    ipv6_native = var.ipv6_native
    enable_dns64 = var.enable_dns64
    count = var.sub_count *length(var.vpc_cidr)
    cidr_block = var.sub_az_a_cidr[count.index]
    availability_zone="eu-west-2a"
    depends_on=[aws_vpc.vpc,]
    tags = {
      Name = var.sub_az_a_name[count.index]
    }
}

resource "aws_subnet" "sub-b" {
    vpc_id     = aws_vpc.vpc[count.index % length(var.vpc_cidr)].id
    assign_ipv6_address_on_creation = var.ipv6_address_on_creation
    ipv6_native = var.ipv6_native
    enable_dns64 = var.enable_dns64
    count = var.sub_count * length(var.vpc_cidr)
    cidr_block = var.sub_az_b_cidr[count.index]
    availability_zone="eu-west-2b"
    depends_on=[aws_vpc.vpc,]
    tags = {
      Name = var.sub_az_b_name[count.index]
    }
}




