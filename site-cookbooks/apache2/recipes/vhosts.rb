#
# Cookbook Name:: apache2
# Recipe:: vhosts
#
# Copyright 2012, Adam Brett. All Rights Reserved.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "apache2"

# web_app "example" do
#   server_name "127.0.0.1"
#   server_aliases ["example.vm"]
#   allow_override "all"
#   docroot "/var/www/"
# end

web_app "my_site" do
  server_name node['hostname']
  server_aliases [node['fqdn'], "my-site.example.com"]
  allow_override "all"
  docroot "/var/www/"
end
