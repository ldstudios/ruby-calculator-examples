require "spec_helper"

describe Ruby::Calculator::Examples do
  it "has a version number" do
    expect(Ruby::Calculator::Examples::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
