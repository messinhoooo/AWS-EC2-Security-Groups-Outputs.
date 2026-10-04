variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Nome do grupo"
  type        = string
  default     = "security"
}


variable "ambiente" {
  description = "Ambiente de projeto"
  type        = string
  default     = "Dev"
}

variable "proprietario" {
  description = "Emerson proprietario"
  type        = string
  default     = "Emerson Menezes"
}
