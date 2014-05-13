require 'spec_helper'

describe "Static pages" do
  subject { page }
  let(:base_title) { "SCRUBLYFE" }

  describe "Home page" do
    before(:each) { visit root_path }
    it { should have_title(full_title(''))}
    it { should_not have_title('| Home')}
  end

  describe "About page" do
    before(:each) {visit about_path}
    it { should have_content('About')}
    it { should have_title(full_title('About'))}
  end


end