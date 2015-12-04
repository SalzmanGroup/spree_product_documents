class @ProductDocumentProducts extends @ProductDocumentAssociation
  _getAssociationName: ->
    "product"

  _removeChildData: (element) ->
    product_id: element.data("product_id")

  _addChildData: (data) ->
    product_id: data.id

  _getRoutes: ->
    remove_child: Spree.routes.remove_product_document_products,
    add_child: Spree.routes.add_product_document_products,
    search: Spree.routes.product_search
    associations: Spree.routes.product_document_products

  _formatAssociation: (association) ->
    association.name
