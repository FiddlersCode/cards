class Presenter

  def display(number)
    check_suite(number)
  end

  private


  def check_suite(number)
    if number > -1 && number < 13
      'hearts'
    elsif number > 12 && number < 26
      'clubs'
    elsif number > 25 && number < 39
      'spades'
    else
      'diamonds'
    end
  end
end
