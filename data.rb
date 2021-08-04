require 'yaml'

module Info
  def all_users
    YAML.load_file 'users_data.yaml'
  end

  def all_products
    YAML.load_file 'products_data.yaml'
  end
end
