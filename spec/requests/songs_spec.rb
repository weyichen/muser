require 'spec_helper'

describe "Songs" do

  describe "Home page" do

    it "should have the content 'Songs'" do
      visit '/songs/index'
      expect(page).to have_content('Sample App')
    end
  end
end

#require 'rails_helper'

#RSpec.describe "Songs", :type => :request do
#  describe "GET /songs" do
#    it "works! (now write some real specs)" do
#      get songs_index_path
#      expect(response).to have_http_status(200)
#    end
#  end
#end
