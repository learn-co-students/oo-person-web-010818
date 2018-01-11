require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  @@all = []

  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

    @@all << self
  end

  def happiness=(new_happiness)
    if new_happiness >10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend) #friend is another instance of the Person class
    found_friend = self.class.all.find do |person|
      person == friend
    end

    self.happiness += 3
    found_friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    found_person = self.class.all.find do |p|
      p == person
    end

    if topic == "politics"
      self.happiness -= 2
      found_person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      found_person.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
