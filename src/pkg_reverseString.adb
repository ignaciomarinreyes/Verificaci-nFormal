package body pkg_reversestring with SPARK_Mode is

   function reverseString (InStr : T_String) return T_String is
      OutStr : T_String := InStr;
   begin
      for I in 0 .. InStr'Length -1 loop

         OutStr (OutStr'First + I) :=  InStr(InStr'Last  - I);
         pragma Loop_Invariant (for all J in 0 .. I =>
                                OutStr(OutStr'First + J) = InStr(InStr'Last - J));
      end loop;
      return (OutStr);

   end reverseString;
end pkg_reversestring;
