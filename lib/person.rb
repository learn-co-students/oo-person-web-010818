class Person
  attr_accessor :bank_account, :index
  attr_reader :name


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hy)
    if hy > 10
      @hygiene = 10
    elsif hy < 0
      @hygiene = 0
    else
      @hygiene = hy
    end
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end


  def happy?
   (happiness >= 8)? true : false
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
     "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end


  def call_friend(obj)
    self.happiness += 3
    obj.happiness +=3
    "Hi #{obj.name}! It's #{self.name}. How are you?"

  end

  def start_conversation(obj, topic)
    if topic == "politics"
      self.happiness -= 2
      obj.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness +=1
      obj.happiness +=1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
  end
  end





end
