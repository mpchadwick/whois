# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.net.nf/property_status_not_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.net.nf.rb'

describe Whois::Record::Parser::WhoisNicNetNf, "property_status_not_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.net.nf/property_status_not_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :available
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
end
