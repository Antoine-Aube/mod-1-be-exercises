module Orderable
  def confirmation(thing)
    "You got #{thing}."
  end

  def review
    "Please rate your order within 30 days."
  end

  def delivery
    "Your food will arrive in 45-60 minutes."
  end
end
