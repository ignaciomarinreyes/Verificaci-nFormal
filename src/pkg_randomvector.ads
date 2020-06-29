package pkg_randomvector with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Positive;
   
   function randomVector (In1 : Positive; In2 : Positive) return T_Vector
   --Function that receives two positive numbers as input parameters (In1, In2), and it 
   --returns an array of positive numbers. 
   --Function creates an array whose length is the module of In1 and In2, and which is 
   --initialized to 1. Then, the multiplication of In1 and the position 
   --of the array is calculated, then this value is added to the value was stored in that position.
   
   with
       Global  => null,
       Depends => (randomVector'Result => (In1, In2)),
       Pre     => (if In1 mod In2 /= 0 then 
                     In1 <= Positive'Last / 1 and then
                  (for all i in 1..(In1 mod In2) => (In1*i <= Positive'Last - 1))),
       Post    => (for all I in randomVector'Result'Range => 
                     randomVector'Result(I) = 1 + (In1 * I));

end pkg_randomvector;
