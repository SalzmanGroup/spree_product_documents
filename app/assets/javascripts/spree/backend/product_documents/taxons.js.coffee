class @ProductDocumentTaxons extends @ProductDocumentAssociation
  _getAssociationName: ->
    "taxon"

  _removeChildData: (element) ->
    permalink: element.data("permalink")

  _addChildData: (data) ->
    permalink: data.permalink

  _getRoutes: ->
    remove_child: Spree.routes.remove_product_document_taxons,
    add_child: Spree.routes.add_product_document_taxons,
    search: Spree.routes.taxons_search
    associations: Spree.routes.product_document_taxons

  _formatAssociation: (association) ->
    association.pretty_name
