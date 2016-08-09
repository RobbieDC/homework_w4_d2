require_relative( "../db/sql_runner" )

class Shoo

  attr_reader( 
    :id, 
    :first_name, 
    :last_name, 
    :street_address, 
    :town, 
    :postcode, 
    :quantity, 
    :size 
  )

  def initialize( options )
    @id = options["id"].to_i
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @street_address = options["street_address"]
    @town = options["town"]
    @postcode = options["postcode"]
    @quantity = options["quantity"]
    @size = options["size"]
  end

  def format_name
    return @first_name.concat( " #{@last_name}" )
  end

  def format_address
    upcased_postcode = @postcode.upcase
    return @street_address.concat( ", #{@town}, #{upcased_postcode}" )
  end

  def save()
    sql = "INSERT INTO"

end