


module Memorable


    module ClassMethods #set it up as a class method and now the other files can inherit the methods
        def reset_all
          self.all.clear
        end
    
        def count
          self.all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end



end 