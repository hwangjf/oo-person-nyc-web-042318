require ‘pry’
class Person
attr_accessor :name, :bank_balance, :happy, :hygiene



 def initialize(name, bank_balance=25, happy=8, hygiene=8)
   @name = name
   @bank_balance = bank_balance

   @happy = happy
   if @happy > 10
     @happy = 10
   elsif @happy < 0
     @happy = 0
   else
     @happy = happy
   end
   if hygiene > 10 || hygiene < 0
     puts “NO”
   end
   @hygiene = hygiene
   if @hygiene > 10
     @hygiene = 10
   elsif @hygiene < 0
     @hygiene = 0
   else
     @hygiene = hygiene
   end
 end

 def clean?
   if @hygiene > 7
     return true
   else return false
   end
 end

 def happy?
   if @happy > 7
     return true
   else return false
   end
 end

 def get_paid(salary)
   @salary = salary
   @bank_balance += salary
   @bank_balance
   return “all about the benjamins”
 end

 def limit_hygiene(@hygiene, range=0..10)

 end

 def take_bath
   @hygiene += 4
   @hygiene = hygiene
   # if @hygiene > 10
   #   @hygiene = 10
   # else
   #   @hygiene = hygiene
   # end
   return “♪ Rub-a-dub just relaxing in the tub ♫”
 end

 def work_out
   @hygiene -= 3

   if @hygiene < 0
     @hygiene = 0
   else
     @hygiene = hygiene
   end

   @happy += 2
   if @happy > 10
     @happy = 10
   else
     @happy = happy
   end
   return “♪ another one bites the dust ♫”
 end

 def call_friend(other)
   other.happy += 3
   self.happy += 3

   if other.happy > 10
     other.happy = 10
   else
     other.happy = other.happy
   end
   if self.happy > 10
     self.happy = 10
   else
     self.happy = happy
   end
   return “Hi #{other.name}. It’s #{self.name}! How are you?”
 end

 def start_conversation(other, topic)
   if topic == “politics”
     other.happy -= 5
     self.happy -= 5
               #friend
               if other.happy < 0
                 other.happy = 0
               else
                 other.happy = other.happy
               end
               #self
               if self.happy < 0
                 self.happy = 0
               else
                 self.happy = happy
               end
     return “blah blah partisan blah lobbyist”
   elsif topic == “weather”
     other.happy += 1
     self.happy += 1
               #friend
               if other.happy > 10
                 other.happy = 10
               else
                 other.happy = other.happy
               end
               #self
               if self.happy > 10
                 self.happy = 10
               else
                 self.happy = happy
               end
     return “blah blah sun blah rain”
   else
     return “blah blah blah blah blah”
   end

 end





end

