require 'spec_helper'

describe "Songs" do

  describe "Songs Index" do

    it "should have the title 'All Songs | Muser'" do
      visit '/songs'
      expect(page).to have_title('All Songs | Muser')
    end

  end
end

describe "Users" do

  describe "Users Index" do
    
    it "should have the title 'Muser'" do
      visit '/users'
      expect(page).to have_title('Muser')
    end

    it "should not have the |'" do
      visit '/users'
      expect(page).not_to have_title('| Muser')
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
