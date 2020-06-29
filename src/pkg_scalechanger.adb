package body pkg_scalechanger with SPARK_Mode is

   procedure scaleChanger (InTemp : in out Integer; InScale : in Character) is
   begin

       if InScale = 'C' or  InScale = 'c' then
         InTemp := (InTemp * 2) + 32;
       elsif InScale = 'f' or InScale = 'F' then
         InTemp := (InTemp - 32) / 2;
       end if;

   end scaleChanger;
end pkg_scalechanger;
