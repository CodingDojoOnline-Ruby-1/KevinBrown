module Coders_Friend
    def run_this
        yield 7
    end






    def give_and_take
        puts "hi jason"
    end

end




class Coder
    include Coders_Friend
end

Coder.new.run_this{|val| puts val} 
