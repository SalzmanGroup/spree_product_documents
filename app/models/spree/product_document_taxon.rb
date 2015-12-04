class Spree::ProductDocumentTaxon < ActiveRecord::Base
  belongs_to :taxon
  belongs_to :product_document

  validates_presence_of :taxon, :product_document
end
