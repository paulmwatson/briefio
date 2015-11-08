require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "should have minimum required data" do
    link = Link.new
    assert_not link.valid?
    assert_equal [:title, :url], link.errors.keys
  end

  test "should not allow invalid url" do
    link = Link.new(url: 'notavalidurl')
    link.valid?
    assert_includes link.errors.keys, :url
  end

  test "should not allow invalid thumbnail_url" do
    link = Link.new(thumbnail_url: 'notavalidurl')
    link.valid?
    assert_includes link.errors.keys, :thumbnail_url
  end
end
