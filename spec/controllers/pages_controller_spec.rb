require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  render_views

  describe "GET 'home'" do
    it "devrait réussir" do
      #controller.template.should_receive(:title).and_return("Title")
      get 'home'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'home'
      response.should have_selector("title",
                                    :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "devrait réussir" do
      get 'contact'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
                                    :content =>
                                        "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "GET 'about'" do
    it "devrait réussir" do
      get 'about'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                                    :content =>
                                        "Simple App du Tutoriel Ruby on Rails | À Propos")
    end
  end
  
  describe "LayoutLinks" do

  it "devrait trouver une page Accueil à '/'" do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an À Propos page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "À Propos")
  end

  it "devrait trouver une page Iade à '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Aide")
  end
end



end
