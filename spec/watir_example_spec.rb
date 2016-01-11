# encoding: utf-8

require "watir-webdriver"

describe "watir" do
  before :context do
    @browser = Watir::Browser.new
  end

  after :context do
    @browser.quit if @browser
  end

  it "displays the title" do
    @browser.goto "www.github.com"
    expect(@browser.title).to include "GitHub"
  end

  it "displays the search query input" do
    expect(@browser.text_field(placeholder: "Search GitHub")).to be_present
  end

  describe "search for a repository" do
    it "searches for a repo" do
      search_input = @browser.text_field(placeholder: "Search GitHub")
      search_input.set "watir-webdriver"
      @browser.send_keys :enter
      expect(@browser.text).to match /We’ve found \d+ repository results/
    end
  end
end
