class CatalogRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :catalog

  def self.table_name_prefix
    "catalog_#{Rails.env}.".to_sym
  end
end
