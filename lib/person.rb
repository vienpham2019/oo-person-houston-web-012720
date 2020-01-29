class Person 
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
  
    def initialize(name, balance = 25)
      @name = name
      @bank_account = balance
      @happiness = 8 
      @hygiene = 8
    end
  
    def hygiene=(num)
      @hygiene = num < 0 ? num = 0 : num > 10 ? num = 10 : num 
    end  
  
    def happiness=(num)
      @happiness = num < 0 ? num = 0 : num > 10 ? num = 10 : num 
    end 
  
    def happy?
      @happiness > 7 ? true : false
    end
  
    def clean?
      @hygiene > 7 ? true : false
    end 
  
    def get_paid(salary)
      @bank_account += salary
      "all about the benjamins"
    end  
  
    def take_bath
    #   self.hygiene += 4
        hygiene(@hygiene += 4)
      '♪ Rub-a-dub just relaxing in the tub ♫'
    end 
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end 
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end  
    
    def start_conversation(person, topic)
      case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else 
        "blah blah blah blah blah"  
      end  
    end  
  
  end  