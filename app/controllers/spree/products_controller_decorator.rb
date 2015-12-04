Spree::ProductsController.class_eval do
  append_before_filter :set_documents, only: :show

  private

  def set_documents
    taxon_docs = Spree::ProductDocument.joins(taxons: :products).
      where(spree_products: { id: @product.id}).
      uniq
    product_docs = @product.product_documents
    @product_documents = (taxon_docs + product_docs).uniq
  end
end
