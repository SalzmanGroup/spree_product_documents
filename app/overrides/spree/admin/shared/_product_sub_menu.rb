Deface::Override.new(
  virtual_path: "spree/admin/shared/_product_sub_menu",
  name: "add_product_document_tab",
  insert_after: "erb[loud]:contains('tab :taxons')",
  text: "<%= tab :product_documents, match_path: '/product_documents' %>"
)
