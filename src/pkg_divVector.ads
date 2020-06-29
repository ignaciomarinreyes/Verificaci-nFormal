package pkg_divvector with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Natural;

   function divVector (vectorInicial : T_Vector; n : Positive) return T_Vector
   --Function that receives two input parameters: an array of natural numbers and a positive number
   --Function returns an array of natural numbers of the same length as the input array.
   --It calculates the module of each position and the positive number passed as a parameter, if the
   --module is 0 then that value is copied to the same position of the array to be returned, if it is
   --not 0, a zero is copied.

   with
      Global  => null,
      Depends => (divVector'Result => (vectorInicial, n)),
      Pre     => (vectorInicial'Length > 0),
      Post    => (for all I in divVector'Result'Range =>
                    (if vectorInicial(I) mod n = 0 then
                         divVector'Result(I) = vectorInicial(I)
                    else
                        divVector'Result(I) = 0));

end pkg_divvector;
