require 'spec_helper'

describe "LayoutLinks" do

  it "devrait avoir une page d'inscription à '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Inscription")
  end
end
