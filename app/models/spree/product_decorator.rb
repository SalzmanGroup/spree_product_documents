Spree::Product.class_eval do
  has_many :product_document_products
  has_many :product_documents, through: :product_document_products
end
