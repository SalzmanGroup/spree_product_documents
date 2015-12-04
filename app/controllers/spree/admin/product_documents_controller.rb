class Spree::Admin::ProductDocumentsController < Spree::Admin::ResourceController
  before_filter :set_taxon, only: [:add_taxon, :remove_taxon]
  before_filter :set_product, only: [:add_product, :remove_product]

  def index
    @product_documents = model_class.all
  end

  def add_taxon
    unless @product_document.taxons.include?(@taxon)
      @product_document.taxons << @taxon
    end

    render text: { permalink: @taxon.permalink, pretty_name: @taxon.pretty_name }.to_json
  end

  def remove_taxon
    @product_document.product_document_taxons.
      where(taxon: @taxon).destroy_all

    render text: { success: true }.to_json
  end

  def taxons
    taxons = @product_document.
      taxons.
      map {|t| { pretty_name: t.pretty_name, permalink: t.permalink } }.
      to_json
    render text: taxons
  end

  def add_product
    unless @product_document.products.include?(@product)
      @product_document.products << @product
    end

    render text: { id: @product.id, name: @product.name }.to_json
  end

  def products
    products = @product_document.
      products.
      map {|p| { id: p.id, name: p.name } }.
      to_json
    render text: products
  end

  def remove_product
    @product_document.product_document_products.
      where(product: @product).destroy_all

    render text: { success: true }.to_json
  end

  protected

  def location_after_save
    edit_object_url(@object)
  end

  private

  def set_taxon
    @taxon = Spree::Taxon.find_by_permalink(params[:permalink]) if params[:permalink]
  end

  def set_product
    @product = Spree::Product.find(params[:product_id]) if params[:product_id]
  end
end
