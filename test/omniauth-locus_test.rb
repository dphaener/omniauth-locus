require './helper'

class OmniauthLocusTest < Test::Unit::TestCase
  def setup
    @subject = OmniAuth::Strategies::Locus.new({})
  end

  should "be called locus" do
    assert_equal "locus", @subject.options.name    
  end

  should "have the correct api endpoint" do
    assert_equal "https://api.locusenergy.com/v3", @subject.options.client_options[:site]
  end

  should "have the correct token url" do
    assert_equal "https://api.locusenergy.com/oauth/token", @subject.options.client_options[:token_url]
  end
end
