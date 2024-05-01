resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name     = "jhc-tca"
    Locatoin = "Bangalore"
  }
}

#create subnet in the above VPC

resource "aws_subnet" "main" {
  count = length(data.aws_availability_zones.azs.names)
  vpc_id     = aws_vpc.main.id
  availability_zone = local.az_names[count.index]
  cidr_block = cidrsubnet(var.vpc_cidr,8,count.index)
  tags = {
    Name = "MySubnet-${count.index}"
  }
}  
