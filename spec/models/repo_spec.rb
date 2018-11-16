require 'rails_helper'
require_relative "../../app/models/repo.rb"

RSpec.describe Repo, :type => :model do

  it "is not valid without a Name" do
    test_repo = Repo.create(name: nil, description: "what a wonderful donut rating app", language: "Ruby on Rails")
    expect(test_repo).to_not be_valid
  end

  it "is not valid without a Description" do
    test_repo = Repo.create(name: "Donut Raiders", language: "Ruby on Rails")
    expect(test_repo).to_not be_valid
  end

  it "is valid without a Language" do
    test_repo = Repo.create(name: "Donut Raiders", description: "what a wonderful donut rating app")
    expect(test_repo).to be_valid
  end

end
