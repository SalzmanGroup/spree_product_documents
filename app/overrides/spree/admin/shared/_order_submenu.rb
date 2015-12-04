Deface::Override.new(
  virtual_path: "spree/admin/shared/_order_submenu",
  name: "add_admin_order_product_documents",
  insert_bottom: %Q{[data-hook="admin_order_tabs"]},
  text: <<-text
    <% if can?(:update, @order) %>
      <% klass = (current == "Order Product Documents") ? "active" : "" %>
      <%= content_tag :li, class: klass do %>
        <%= link_to_with_icon 'file-pdf-o', Spree.t(:product_documents), product_documents_admin_order_path(@order) %>
      <% end %>
    <% end %>
  text
)
