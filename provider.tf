provider "aws" {
    profile = "default"
    region = "us-east-1"
  
}

provider "aws" {
  region = "us-west-2"
  alias = "west"
}