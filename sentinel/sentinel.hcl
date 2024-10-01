sentinel {
    features = {
        terraform = true
    }
}

import "plugin" "tfplan/v2" {
  config = {
    plan_path = "/home/ecasale/Desktop/curso_terraform/Ejercicio-martes-curso-avanzado-terraform/plan.json"
  }
}

policy "valid_instance_type" {
    source = "./policies/instances.sentinel"

    params = {
        instance_type = "t3.micro"
        instance_region = "us-east-2"
    }
}