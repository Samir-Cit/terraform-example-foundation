/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "env" {
  source = "../../modules/base_env"

  env                           = "production"
  business_code                 = "bu1"
  business_unit                 = "business_unit_1"
  remote_state_bucket           = var.remote_state_bucket
  location_kms                  = var.location_kms
  location_gcs                  = var.location_gcs
  optional_iap_fw_rules_enabled = true
  subnet_region                 = "us-central1"
  subnet_ip_range               = "10.3.192.0/21"
  peering_module_depends_on     = var.peering_module_depends_on
}
