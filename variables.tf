variable "region" {
    default = "us-east-1"
    type    =  string
}

variable "bucket_name" {
    type    =  string
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
  description = "AWS access key"
}

variable "AWS_SECRET_ACCESS_KEY" {
   type = string
   description = "AWS secret key"
}
