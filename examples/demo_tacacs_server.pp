# Manifest to demo cisco_tacacs_server provider
#
# Copyright (c) 2014-2015 Cisco and/or its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class ciscopuppet::demo_tacacs_server {
  cisco_tacacs_server {'default':
    ensure              => present,
    timeout             => 10,
    directed_request    => true,
    deadtime            => 20,
    encryption_type     => clear,
    encryption_password => 'test123',
    source_interface    => 'Ethernet1/2',
  }
}
