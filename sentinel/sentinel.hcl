import "static" "software_inventory" {
    source = "./software_inventory/software_inventory.json"
    format = "json"
}

policy "valid_instance_type" {
    source = "./policies/policy1.sentinel"

    params = {
        instance_type = "t3.large"
        instance_region = "us-east-1"
    }
}

policy "std_imports" {
    source = "./policies/std_imports.sentinel"
}

policy "valid_json_import" {
    source = "./policies/json_import.sentinel"

    params = {
        terraform_min_version = "1.5.0"
        sentinel_min_version  = "0.20"
    }
}