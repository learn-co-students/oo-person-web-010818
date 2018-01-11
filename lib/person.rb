
require 'pry'
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

  def happiness=(num)
    @happiness = num
    @happiness = 0 if @happiness < 0
    @happiness = 10 if @happiness > 10
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    @happiness > 7
    end

  def clean?
    @hygiene > 7
    end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
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


def call_friend(friend)
  object = [friend, self]
  object.each {|own| own.happiness +=3}
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end


#map out objects to iterate through
#what default variable values should be
#how to achieve desired result ie happiness reduction improvement
#what final result should be
def start_conversation(starter, topic)
  trouble = [starter, self]
  if topic == "politics"
    trouble.each {|one| one.happiness -=2}
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    trouble.each {|one| one.happiness += 1}
    "blah blah sun blah rain"
  else
  "blah blah blah blah blah"
end

end

end
