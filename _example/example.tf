provider "aws" {
  region = "ap-southeast-2"
}

module "keypair" {
  source = "./../"

  name        = "yada"
  environment = "test"
  label_order = ["name", "environment"]

  enable_key_pair = true
  public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCudIC/l8ZCHUMv44k0eLjG6Dy3ByAIcwXN0acQ2RzzNTY/VnTut5UXlADEv8QErytuf5Q5sMmxJIEaqXeX+A2DskmZ9SizshU0nx95T52UU+7DF6zesFeWf2OhxP+J8XIHgnpBkBIglydRR8hUOktz0fqemUdRJ6nkpQzsfVnCOn1WF5eazJxHYQHmABrOy371Cxbm11dMXqiWvg+hrnUxl1rwRwClBaOjlp3vVmpcnkpdp4mC7WGiT/UZpc+NK4S3Kc2GwkHvcGANllsyJSSb34JPFnoWgJ4YKLwxtaWkLW3dnIhDrhARE7TcdW+OxiIgsl88TMyAMESr9FdO7G7ysdTLzKP6IPoTxmDJI+OT6QJLIh3KqmVrQlEHlnP8QeOMrF65bUjmg+ZgkCq1J8o/5hAKRvBfm2Mq+3lFB8h3v/7dpceRrzzajpMTYlJFHBcZ4Gl6mUl/4KZDhlicv8vAw5jSomYZ3tlnvapF1/YcQJzRGOP+JJTOVr1VV+FQEn8= vinod@vinod"
}
