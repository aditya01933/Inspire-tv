require 'rails_helper'

RSpec.describe Quote, type: :model do
  it 'should fetch random record' do
    quote = FactoryGirl.create(:quote)

    random_quote = Quote.random
    expect(random_quote.first).to eq quote
  end
end
