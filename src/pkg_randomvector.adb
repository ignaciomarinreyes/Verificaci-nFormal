package body pkg_randomvector with SPARK_Mode is

   function randomVector (In1 : Positive; In2 : Positive) return T_Vector is
      vector : T_Vector(1..(In1 mod In2)) := (others => 1);
   begin
      for I in vector'Range loop    
         
         vector(I) := vector(I) + In1 * I;      
         pragma Loop_Invariant (for all J in vector'First.. I => 
                                  (vector(J) = vector'Loop_Entry(J) + (In1 * J)));
         
      end loop;
      return (vector);
      
   end randomVector;
end pkg_randomvector;
