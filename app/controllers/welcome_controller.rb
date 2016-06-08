class WelcomeController < ApplicationController
  def index
  end

  def render_judgement
    render html: <<-HTML.html_safe
      <div>
        For the horrendous crime of:
        <div>#{params[:offence].upcase}</div>
      </div>
      <div>
        You are hereby sentenced to #{rand(10)} #{%w[ seconds minutes hours days weeks months years ].shuffle.first } working on:
        <div>#{Faker::Company.catch_phrase.upcase}</div>
      </div>
    HTML
  end
end
