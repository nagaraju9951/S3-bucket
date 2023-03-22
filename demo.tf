provider "aws" {
  region     = "us-east-1"
  access_key = "        "
    secret_key = "        "
}
resource "aws_instance" "us-east-1" {
  ami           =  "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"
  count 	= 2
}
 resource "aws_s3_bucket" "b" {
  bucket = "test-easy-learn-terraform"
  acl = "private"

 versioning{
 	enabled = true
 }
 }
