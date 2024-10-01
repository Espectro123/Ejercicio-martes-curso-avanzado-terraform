run "test_bucket_name_is_valid" {

    command = apply

    variables {
        environment = "dev"
    }

    assert {
        condition = strcontains(aws_s3_bucket.bucket.bucket, "ivan-villa")
        error_message = "El nombre del bucket no es válido"
    }

}