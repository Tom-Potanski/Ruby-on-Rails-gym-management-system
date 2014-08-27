require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    # before { visit '/static_pages/home' }
    before { visit root_path }
    it { should have_content('Gym online') }
    it { should have_title('Gym online') }
    it { should have_content('About') }
    it { should have_content('Coaches') }
    it { should have_content('Activities') }
    end
end

