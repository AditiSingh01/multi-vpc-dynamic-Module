# multi-vpc-dynamic-Module
<h1><b>Instructions</b></h1><br>

This module is used to create multiple vpc with their respective subnets in both availability zones A and B separately.<br><br>

<b>NOTE</b> - Subnet cidrs and subnet names for both availabilty zones should be provided in a list. The coventions for subnet names is as followed -<br>

sub_az_a_name=["subnet-1-vpc-1-A","subnet-1-vpc-2-A","subnet-2-vpc-1-A","subnet-2-vpc-2-A"] <br>
sub_az_b_name=["subnet-1-vpc-1-B","subnet-1-vpc-2-B","subnet-2-vpc-1-B","subnet-2-vpc-2-B"]<br>

Same conventions should be used for cidrs too.<br><br>

Resources included in this module --<br>

<ul>
<li>
VPC
</li>
<li>
SUBNETS FOR AVAILABILITY ZONE A
</li>
<li>
SUBNETS FOR AVAILABILITY ZONE B
</li>
</ul>
