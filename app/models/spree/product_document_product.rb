class Spree::ProductDocumentProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_document

  validates_presence_of :product, :product_document
end
