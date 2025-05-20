require "test_helper"

class DrillingTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end


  test "can save drillings" do
    d = Drilling.new( year: 2016,
                      place: "Csapod, bányakutatás",
                      name: "Csapod Önkormányzat",
                      drilling_type: "bányakutatás",
                      amount: 8,
                      drilled_depth: 120
                    )
    assert d.save, "Cannot save drilling"
  end


end
