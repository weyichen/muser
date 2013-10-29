require 'chronic'

class LandingPagesController < ApplicationController
  def home
    @current = Time.now
    @tomorrow = Chronic.parse("tomorrow")
    @oneyearago = Chronic.parse("1 year ago")
  end
end
