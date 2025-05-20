require "test_helper"

class ReferenceTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  
  test "can save reference" do
    r = Reference.new( year: 2010,
                      project_description: "Nemesbőd 056/6 hrsz. major ásott kútjainak",
                      project_type: "Vízjogi fennmaradási engedélyes terve" 
                    )
    assert r.save, "Cannot save reference"
  end
end
