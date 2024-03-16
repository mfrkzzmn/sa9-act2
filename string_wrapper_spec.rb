require 'rspec'
require_relative 'string_wrapper'

RSpec.describe StringWrapper do
  let(:string) { "Hello, World!" }
  let(:string_wrapper) { StringWrapper.new(string) }

  describe "#reverse" do
    it "reverses the string" do
      expect(string_wrapper.reverse).to eq(string.reverse)
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string_wrapper.upcase).to eq(string.upcase)
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(string_wrapper.downcase).to eq(string.downcase)
    end
  end
end