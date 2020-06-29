package Pkg_sumVector with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Natural;
   max : Natural;
   min : Natural;

   procedure sumVector (v : in T_Vector; sum : out Natural)
   --Procedure that receives one input parameter: an array of natural numbers. And
   --it receives one output parameter: a natural number where the average is stored.
   --Procedure calculates the maxmimum and the minimum values of the array, then the
   --average of these two values is calculated, adding them and dividing said sum by two.

   with
      Global  => (Output => (max, min)),
      Depends => (sum => v,
                  min => v,
                  max => v),
      Pre     => (v'Length > 0),
      Post    => (if (max <= Natural'Last - min) then
                   sum = (max+min) / 2
                  else
                   sum = Natural'Last);

end Pkg_sumVector;
