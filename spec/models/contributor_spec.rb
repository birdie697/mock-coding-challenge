require 'rails_helper'

RSpec.describe Contributor, :type => :model do

  it "is not valid without a name" do
    contributor = Contributor.create(name: nil, repo_id: 1)
    expect(contributor).to_not be_valid
  end

  it "is not valid without a repo" do
    contributor = Contributor.create(name: "Donut Raiders", repo_id: nil)
    expect(contributor).to_not be_valid
  end

end
