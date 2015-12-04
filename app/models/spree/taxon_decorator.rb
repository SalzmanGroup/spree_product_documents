Spree::Taxon.class_eval do
  has_many :product_document_taxons
  has_many :product_documents, through: :product_document_taxons
end
