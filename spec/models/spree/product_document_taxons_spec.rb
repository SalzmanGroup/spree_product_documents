require 'spec_helper'

describe Spree::ProductDocumentTaxon do
  it { should validate_presence_of(:taxon) }
  it { should validate_presence_of(:product_document) }
  it { should belong_to(:product_document) }
  it { should belong_to(:taxon) }
end
