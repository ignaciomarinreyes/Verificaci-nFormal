package pkg_alphavalue with SPARK_Mode is
   
   type T_String is array (Positive range <>) of Character;
   type T_Array is array (Positive range <>) of Natural;

   function alphaValue (InStr : T_String) return T_Array
   --Function that receives a string as input parameter, and it returns a vector of natural
   --numbers filled with the positions of each character included in the alphabet (a=1..z=26).
   --If the character is not included in the alphabet, the position is filled with 0.
   
   with
      Global  => null,
      Depends => (alphaValue'Result => InStr),
      Pre     => InStr'Length >= 1 and (for all x in InStr'Range => (Character'Pos(InStr(x)) in 0..255)),
      Post    => (alphaValue'Result'Length = InStr'Length and then(                                                                 
                   for all i in alphaValue'Result'Range => 
                       (if Character'Pos(InStr(i)) in 97..122 then  
                            alphaValue'Result(i) = Character'Pos(InStr(i)) - 96
                       elsif Character'Pos(InStr(i)) in 65..90 then
                            alphaValue'Result(i) = Character'Pos(InStr(i)) - 64
                       else 
                            alphaValue'Result(i) = 0)));  
end pkg_alphavalue;
