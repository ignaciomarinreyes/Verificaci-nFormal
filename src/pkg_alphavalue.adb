package body pkg_alphavalue with SPARK_Mode is

   function alphaValue (InStr : T_String) return T_Array is      
        OutArray : T_Array(InStr'Range) := (others => 0);      
       begin
           for I in InStr'Range loop
         
               if Character'Pos(InStr(I)) in 65..90 then
                   OutArray (I) := Character'Pos(InStr(I)) - 64;
               elsif Character'Pos(InStr(I)) in 97..122 then
                   OutArray (I) := Character'Pos(InStr(I)) - 96;
               end if;
         
               pragma Loop_Invariant (for all j in OutArray'First..I => 
                                          (if Character'Pos(InStr(j)) in 97..122 then  
                                               OutArray(j) = Character'Pos(InStr(j)) - 96
                                           elsif Character'Pos(InStr(j)) in 65..90 then
                                               OutArray(j) = Character'Pos(InStr(j)) - 64
                                           else 
                                               OutArray(j) = 0));
           end loop;
      return (OutArray);
      
   end alphaValue;
end pkg_alphavalue;
