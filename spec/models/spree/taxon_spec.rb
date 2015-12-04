require 'spec_helper'

describe Spree::Taxon do
  it { should have_many(:product_document_taxons) }
  it { should have_many(:product_documents) }
end

