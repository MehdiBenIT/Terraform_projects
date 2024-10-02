Objective of this goal: Deploy an apache web server on an ec2 instance using Dynamic blocks and built-in functions.
For that, we will need to deploy some components, like a VPC, with subnets, internet gateway. 
And a security group as well, with some rules create on the fly through terraform dynamic blocks.

And we're using a EC2 bootstrapped with a user data script. But this script is passed depending on conditional logic and some terraform built-in functions.

And finally, in the end of the `terraform apply` command, we will display the URL of our new EC2 instance. 
