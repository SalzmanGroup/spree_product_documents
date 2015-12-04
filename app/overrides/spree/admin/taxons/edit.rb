Deface::Override.new(
  virtual_path: "spree/admin/taxons/edit",
  name: "add_product_documents_to_spree_taxon_view",
  insert_before: %Q{[data-hook="buttons"]},
  text: %Q{<%= render "spree/admin/shared/product_documents", object: @taxon %>},
)
