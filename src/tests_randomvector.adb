with Ada.Text_IO; use Ada.Text_IO;
with pkg_randomvector;     use pkg_randomvector;

procedure tests_RandomVector is

   procedure Test_1 is
      Aux : constant T_Vector(1..1) := (others => 5);
   begin
      Put ("Test 1: (Array de tamaño 1) ....................................");

      pragma Assert (randomVector (4, 3) = Aux);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      Aux : constant T_Vector(1..-1) := (others => 2);
   begin
      Put ("Test 2: (Array de tamaño 0, por ser modulo 0) ....................................");

      pragma Assert (randomVector (4, 2) = Aux);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      Aux : constant T_Vector(1..2) := (9, 17);
   begin
      Put ("Test 3: (Array de tamaño 2) ....................................");

      pragma Assert (randomVector (8, 3) = Aux);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      Aux : constant T_Vector(1..3) := (19, 37, 55);
   begin
      Put ("Test 4: (Array de tamaño 3) ....................................");

      pragma Assert (randomVector (18, 5) = Aux);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      Aux : constant T_Vector(1..4) := (20, 39, 58, 77);
   begin
      Put ("Test 5: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (19, 5) = Aux);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      Aux : constant T_Vector(1..4) := (25, 49, 73, 97);
   begin
      Put ("Test 6: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (24, 5) = Aux);

      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      Aux : constant T_Vector(1..4) := (45, 89, 133, 177);
   begin
      Put ("Test 7: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (44, 5) = Aux);

      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      Aux : constant T_Vector(1..4) := (30, 59, 88, 117);
   begin
      Put ("Test 8: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (29, 5) = Aux);

      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
      Aux : constant T_Vector(1..4) := (150, 299, 448, 597);
   begin
      Put ("Test 9: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (149, 5) = Aux);

      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
      Aux : constant T_Vector(1..4) := (205, 409, 613, 817);
   begin
      Put ("Test 10: (Array de tamaño 4) ....................................");

      pragma Assert (randomVector (204, 5) = Aux);

      Put_Line ("OK");
   end Test_10;

begin
   Put_Line("");
   Put_Line ("********************* Tests_RandomVector");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;
   Test_8;
   Test_9;
   Test_10;

end tests_RandomVector;
