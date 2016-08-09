require( "minitest/autorun" )
require_relative( "../models/shoo" )

class TestShoo < MiniTest::Test

  def setup
    @shoo = Shoo.new( {
      "first_name" => "Shoey",
      "last_name" => "Kafoey",
      "street_address" => "66 Shoo Shed",
      "town" => "Shoo Shelf",
      "postcode" => "sf6 6ss",
      "quantity" => 2,
      "size" => 8
      } )
  end

  def test_shoo_first_name
    assert_equal("Shoey", @shoo.first_name)
  end

  def test_format_name
    assert_equal("Shoey Kafoey", @shoo.format_name)
  end

  def test_format_address
    assert_equal("66 Shoo Shed, Shoo Shelf, SF6 6SS", @shoo.format_address)
  end

end