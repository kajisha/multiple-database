class Product < CatalogRecord
  validates :name, presence: true

  belongs_to :user
end
