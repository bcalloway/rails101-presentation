module SongsHelper
  def price(value)
    value == 0 ? "FREE!" :
    number_to_currency(value)
  end
end