class PagesController < ApplicationController

  def home
    @titre = "Accueil"
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "À Propos"
  end

  def aide
    @titre = "Aide"
  end
end
