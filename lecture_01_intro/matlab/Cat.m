classdef Cat < Animal
   properties
      isDeclawed
   end
   methods
      function obj = Cat(isDeclawed)
         obj@Animal(4);
         if nargin > 0
            obj.isDeclawed = isDeclawed;
            disp('Cat without claws appeared.');
         else
             obj.isDeclawed = false;
            disp('Cat with claws appeared.');
         end
      end
      
      function pounce(obj)
         disp('Cat pounced.');
      end
   end
end