with Ada.Text_IO; use Ada.Text_IO;
with pkg_divvector;     use pkg_divvector;

procedure tests_DivVector is

   procedure Test_1 is
      vectorInicial : constant T_Vector := (0, 4, 2, 1);
      vectorVerificar : constant T_Vector := (0, 4, 2, 0);

   begin
      Put ("Test 1: ....................................");

      pragma Assert (divVector (vectorInicial, 2) = vectorVerificar);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      vectorInicial : constant T_Vector := (4, 9, 3, 1, 5, 12, 6);
      vectorVerificar : constant T_Vector := (0, 9, 3, 0, 0, 12, 6);

   begin
      Put ("Test 2: ....................................");

      pragma Assert (divVector (vectorInicial, 3) = vectorVerificar);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      vectorInicial : constant T_Vector := (12, 6, 2, 1, 9, 10);
      vectorVerificar : constant T_Vector := (12, 6, 0, 0, 0, 0);

   begin
      Put ("Test 3: ....................................");

      pragma Assert (divVector (vectorInicial, 6) = vectorVerificar);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      vectorInicial : constant T_Vector := (10, 5, 15, 3, 4, 12, 6);
      vectorVerificar : constant T_Vector := (10, 5, 15, 0, 0, 0, 0);

   begin
      Put ("Test 4: ....................................");

      pragma Assert (divVector (vectorInicial, 5) = vectorVerificar);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      vectorInicial : constant T_Vector := (16, 15, 12, 10, 6, 12, 3);
      vectorVerificar : constant T_Vector := (0, 0, 0, 0, 0, 0, 0);

   begin
      Put ("Test 5: ....................................");

      pragma Assert (divVector (vectorInicial, 7) = vectorVerificar);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      vectorInicial : constant T_Vector := (7, 14, 5, 3, 8, 16, 3);
      vectorVerificar : constant T_Vector := (7, 14, 0, 0, 0, 0, 0);

   begin
      Put ("Test 6: ....................................");

      pragma Assert (divVector (vectorInicial, 7) = vectorVerificar);

      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      vectorInicial : constant T_Vector := (9, 18, 5, 3, 8, 18, 3);
      vectorVerificar : constant T_Vector := (9, 18, 0, 0, 0, 18, 0);

   begin
      Put ("Test 7: ....................................");

      pragma Assert (divVector (vectorInicial, 9) = vectorVerificar);

      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      vectorInicial : constant T_Vector := (0, 2, 3, 13, 8, 16, 3);
      vectorVerificar : constant T_Vector := (0, 0, 0, 13, 0, 0, 0);

   begin
      Put ("Test 8: ....................................");

      pragma Assert (divVector (vectorInicial, 13) = vectorVerificar);

      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
      vectorInicial : constant T_Vector := (7, 14, 5, 3, 8, 16, 3);
      vectorVerificar : constant T_Vector := (0, 0, 0, 0, 0, 0, 0);

   begin
      Put ("Test 9: ....................................");

      pragma Assert (divVector (vectorInicial, 11) = vectorVerificar);

      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
      vectorInicial : constant T_Vector := (7, 7, 7, 7, 7, 7, 7);
      vectorVerificar : constant T_Vector := (7, 7, 7, 7, 7, 7, 7);

   begin
      Put ("Test 10: ....................................");

      pragma Assert (divVector (vectorInicial, 7) = vectorVerificar);

      Put_Line ("OK");
   end Test_10;

begin
   Put_Line("");
   Put_Line ("********************* Tests_DivVector");
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

end tests_DivVector;
