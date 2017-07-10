class Presenter

  def display(n)
    'You have the ' + check_number(n) + ' of ' + check_suite(n)
  end

  private

  def check_number(n)
    if n == 0 || n == 13 || n == 26 || n == 39
      'ace'
    elsif n == 1 || n == 14 || n == 27 || n == 40
      'two'
    elsif n == 2 || n == 15 || n == 28 || n == 41
      'three'
    elsif n == 3 || n == 16 || n == 29 || n == 42
      'four'
    elsif n == 4 || n == 17 || n == 30 || n == 43
      'five'
    elsif n == 5 || n == 18 || n == 31 || n == 44
      'six'
    elsif n == 6 || n == 19 || n == 32 || n == 45
      'seven'
    elsif n == 7 || n == 20 || n == 33 || n == 46
      'eight'
    elsif n == 8 || n == 21 || n == 34 || n == 47
      'nine'
    elsif n == 9 || n == 22 || n == 35 || n == 48
      'ten'
    elsif n == 10 || n == 23 || n == 36 || n == 49
      'jack'
    elsif n == 11 || n == 24 || n == 37 || n == 50
      'queen'
    elsif n == 12 || n == 25 || n == 38 || n == 51
      'king'
    end
  end

  def check_suite(n)
    if n > -1 && n < 13
      'hearts'
    elsif n > 12 && n < 26
      'clubs'
    elsif n > 25 && n < 39
      'spades'
    else
      'diamonds'
    end
  end
end
