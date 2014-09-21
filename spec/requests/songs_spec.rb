require 'spec_helper'

describe "Songs" do
  subject { page }

  describe "Songs Index" do
    before { visit "/songs" }
    it { should have_title('All Songs | Muser') }
  end

end

describe "Users" do
  subject { page }

  describe "Users Index" do
    before { visit "/users" }
    it { should have_title('Muser') }
    it { should_not have_title('| Muser') }
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
