require "test_helper"

class LinkTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "can save link" do
    l = Link.new( name: "link",
                  link: "www.valami.com",
                  description: "This is a link."
                )
    assert l.save, "Cannot save link."
  end



end
