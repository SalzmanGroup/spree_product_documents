$ ->
  if $("#product-document-product-field").length > 0 && $("#product-document-taxon-field").length > 0
    products = {
      searchFieldId: "#product-document-product-field",
      listParentId: ".pd-product-rows",
      listChildId: ".pd-product",
      templateId: "#product_document_product_template"
    }

    taxons = {
      searchFieldId: "#product-document-taxon-field",
      listParentId: ".pd-taxon-rows",
      listChildId: ".pd-taxon",
      templateId: "#product_document_taxon_template"
    }

    new ProductDocumentProducts(products)
    new ProductDocumentTaxons(taxons)
