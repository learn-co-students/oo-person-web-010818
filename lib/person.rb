class Person
  attr_accessor :hygiene, :happiness, :bank_account
  attr_reader :name
  @@people = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@people << name
  end

  def bank_account
    @bank_account
  end

  def happiness
    return 10 if @happiness > 10
    return 0 if @happiness < 0
    @happiness
  end

  def hygiene
    return 10 if @hygiene > 10
    return 0 if @hygiene < 0
    @hygiene
  end

  def happy?
    return true if @happiness > 7
    false
  end

  def clean?
    return true if @hygiene > 7
    false
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    penelope = Person.new("Penelope")
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    guy = Person.new("guy")
    self.happiness -= 2 if topic == "politics"
    person.happiness -= 2 if topic == "politics"
    self.happiness += 1 if topic == "weather"
    person.happiness += 1 if topic == "weather"
    return "blah blah partisan blah lobbyist" if topic == "politics"
    return "blah blah sun blah rain" if topic == "weather"
    return "blah blah blah blah blah"
  end

end
