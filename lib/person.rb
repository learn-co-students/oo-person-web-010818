# your code goes here

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene+4)

    "\u266A Rub-a-dub just relaxing in the tub \u266B"
  end

  def work_out
    self.hygiene=(self.hygiene-3)
    self.happiness=(self.happiness+2)
    "\u266A another one bites the dust \u266B"
  end


  def hygiene=(amount)
    if amount <= 10 && amount >= 0
      @hygiene = amount
    elsif amount > 10
      @hygiene = 10
    elsif amount < 0
      @hygiene = 0
    end
  end

  def happiness=(amount)
    if amount <= 10 && amount >= 0
      @happiness = amount
    elsif amount > 10
      @happiness = 10
    elsif amount < 0
      @happiness = 0
    end
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
