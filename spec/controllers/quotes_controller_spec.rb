require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  it "has a 200 status code" do
    get :index, xhr: true
    expect(response.code).to eq '200'
  end

  it "has a 200 status code" do
    get :index
    expect(response.code).to eq '200'
  end
end
