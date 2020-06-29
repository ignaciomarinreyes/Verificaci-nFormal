package body pkg_divvector with SPARK_Mode is

   function divVector (vectorInicial : T_Vector; n : Positive) return T_Vector is
      vectorFinal : T_Vector(vectorInicial'First..vectorInicial'Last) := (others => 0);
      I : Natural := vectorInicial'First;
   begin
      while I < vectorInicial'Last loop

         if (vectorInicial(I) mod n) = 0 then
            vectorFinal(I) := vectorInicial(I);
         else
            vectorFinal(I) := 0;
         end if;

         pragma Loop_Variant(Increases => I);
         pragma Loop_Invariant(I in vectorInicial'First..vectorInicial'Last - 1);
         pragma Loop_Invariant(
                 for all J in vectorInicial'First..I =>
                    (if vectorInicial(J) mod n = 0 then
                        vectorFinal(J) = vectorInicial(J)
                     else
                        vectorFinal(J) = 0));
         I := I + 1;
      end loop;

      if vectorInicial(vectorInicial'Last) mod n = 0 then
         vectorFinal(vectorFinal'Last) := vectorInicial(vectorInicial'Last);
      else
         vectorFinal(vectorFinal'Last) := 0;
      end if;

      return (vectorFinal);

   end divVector;
end pkg_divvector;
