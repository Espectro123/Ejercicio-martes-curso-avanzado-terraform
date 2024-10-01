run "test_bucket_name_is_valid" {

    command = apply

    assert {
        condition = strcontains(aws_s3_bucket.bucket.bucket, "ejercicio-martes")
        error_message = "El nombre del bucket no es válido"
    }

}

run "vpc_count_is_valid" {

    command = plan

    variables {
        public_subnets_prod = 3
        public_subnets_dev = 1
    }

    assert {
        condition = (length(vpc.public_subnets) == var.public_subnets_prod && vpc.tags.Environment == "prod") && (length(vpc.public_subnets) == var.public_subnets_dev && vpc.tags.Environment == "dev")
        error_message = "The number of subnets is invalid for the selected environment"
    }

}