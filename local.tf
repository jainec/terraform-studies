resource "local_file" "first_example" {
    filename = "first_example.txt"
    content = var.content
}

resource "local_file" "second_example" {
    filename = "second_example.txt"
    content = var.content_default
}

variable "content" {}

variable "content_default" {
    type = string
    default = "Default var value"
}

output "file-id" {
    value = resource.local_file.first_example.id
}

output "file-content" {
    value = var.content
}

output "chicken-egg" {
    value = sort(["🐔", "🥚"])
}

data "local_file" "first_data_source" {
    filename = "first_example.txt"
}

output "data_source_result" {
    value = data.local_file.first_data_source.content
}