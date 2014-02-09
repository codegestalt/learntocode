class PagesController < ApplicationController

  def sitemap
    @pages = Seiten::Page.all
  end
end
