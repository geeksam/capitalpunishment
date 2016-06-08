class WelcomeController < ApplicationController
  def index
  end

  def render_judgement
    @offence   = params[:offence].upcase
    @judgement = Faker::Company.catch_phrase.upcase
    @period    = "#{rand(10)} #{%w[ seconds minutes hours days weeks months years ].shuffle.first }"
  end
end
