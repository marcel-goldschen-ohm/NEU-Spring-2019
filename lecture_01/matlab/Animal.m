classdef Animal
   properties
      legs
   end
   methods
      function obj = Animal(legs)
         if nargin > 0
            obj.legs = legs;
         else
             obj.legs = 0;
         end
         disp(['Animal with ' num2str(obj.legs) ' legs appeared.']);
      end
      
      function run(obj)
         disp(['Animal with ' num2str(obj.legs) ' legs is running.']);
      end
   end
end