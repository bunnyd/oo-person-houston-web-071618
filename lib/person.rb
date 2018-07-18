require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  def happiness=(new_happiness)
    if new_happiness > 10
      new_happiness = 10
    elsif new_happiness < 0
      new_happiness = 0
    end

    @happiness = new_happiness
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      new_hygiene = 10
    elsif new_hygiene < 0
      new_hygiene = 0
    end

    @hygiene = new_hygiene
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
    self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_instance)
    friend_instance.happiness += 3
    self.happiness += 3

    "Hi #{friend_instance.name}! It's #{@name}. How are you?"
  end

  def start_conversation(conversation_partner, conversation_topic)
    if conversation_topic == "politics"
      conversation_partner.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif conversation_topic == "weather"
      conversation_partner.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
