class Spree::ProductDocument < ActiveRecord::Base
  has_attached_file :file
  validates_presence_of :file, :name
  do_not_validate_attachment_file_type :file

  has_many :product_document_taxons
  has_many :taxons, through: :product_document_taxons
  has_many :product_document_products
  has_many :products, through: :product_document_products
end
