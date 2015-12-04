Spree::Order.class_eval do
  def product_documents
    # We reorder "" here because to get rid of the default order by scope.
    product_ids = line_items.
      joins(variant: :product).
      reorder("").
      pluck("spree_products.id").
      uniq

    taxon_docs = Spree::ProductDocument.joins(taxons: :products).
      where(spree_products: { id: product_ids })
    product_docs = Spree::ProductDocument.joins(:products).
      where(spree_products: { id: product_ids })
    (taxon_docs + product_docs).uniq
  end
end
