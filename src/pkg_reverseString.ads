package pkg_reversestring with SPARK_Mode is

   type T_String is array (Positive range <>) of Character;

   function reverseString (InStr : T_String) return T_String
   --Function that receives a string as input parameter, and it returns another
   --string that is an inverted copy of the input string.

   with
       Global  => null,
       Depends => (reverseString'Result => InStr),
       Pre     => InStr'Length > 0,
       Post    => (for all J in 0 .. InStr'Length -1 =>
                   reverseString'Result(reverseString'Result'First + J) = InStr(InStr'Last - J));

end pkg_reversestring;
