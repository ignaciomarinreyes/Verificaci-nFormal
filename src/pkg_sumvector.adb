package body Pkg_sumVector with SPARK_Mode is

   procedure sumVector (v : in T_Vector; sum : out Natural) is
   begin
      max := v (v'First);
      min := v (v'First);

      for i in v'Range loop

         if v(i) > max then
            max := v(i);
         elsif v(i) < min then
            min := v(i);
         end if;

         pragma Loop_Invariant (for all K in v'First..i => v(K) <= max);
         pragma Loop_Invariant (for some J in v'First..i => max = v(J));

         pragma Loop_Invariant (for all K in v'First..i => v(K) >= min);
         pragma Loop_Invariant (for some J in v'First..i => min = v(J));

      end loop;

      if (max <= Natural'Last - min) then
         sum := (max+min) / 2;
      else
         sum := Natural'Last;
      end if;

   end sumVector;
end Pkg_sumVector;
