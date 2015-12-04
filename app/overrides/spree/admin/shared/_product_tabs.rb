Deface::Override.new(
  name: "add_product_documents_to_product_sidebar",
  virtual_path: "spree/admin/shared/_product_tabs",
  insert_bottom: %Q{[data-hook="admin_product_tabs"]},
  disabled: false,
  text: <<-text
      <%= content_tag :li, :class => ('active' if current == 'Product Documents') do %>
        <%= link_to_with_icon 'file-pdf-o', Spree.t(:product_documents), product_documents_admin_product_url(@product) %>
      <% end if can?(:product_document, Spree::Product) %>
    text
)
