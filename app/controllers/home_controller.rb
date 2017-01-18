class HomeController < ApplicationController
  def index
  end
 
  def feed
    @advisories = RubysecAdvisory.imported.recent.limit(20)
    @updated_at = @advisories.first.try(:updated_at)
    render :atom
  end
end
