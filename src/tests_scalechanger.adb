with Ada.Text_IO; use Ada.Text_IO;
with pkg_scalechanger;     use pkg_scalechanger;

procedure tests_ScaleChanger is

   procedure Test_1 is
      InTemp : Integer := 4;
   begin
      Put ("Test 1: ....................................");
      ScaleChanger (InTemp, 'c');
      pragma Assert (InTemp = 40);

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      InTemp : Integer := 4;
   begin
      Put ("Test 2: ....................................");

      ScaleChanger (InTemp, 'f');
      pragma Assert (InTemp = -14);

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
      InTemp : Integer := -10;
   begin
      Put ("Test 3: ....................................");

      ScaleChanger (InTemp, 'C');
      pragma Assert (InTemp = 12);

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      InTemp : Integer := 5;
   begin
      Put ("Test 4: ....................................");

      ScaleChanger (InTemp, 'c');
      pragma Assert (InTemp = 42);

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
      InTemp : Integer := 300;
   begin
      Put ("Test 5: ....................................");

      ScaleChanger (InTemp, 'f');
      pragma Assert (InTemp = 134);

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
      InTemp : Integer := -50;
   begin
      Put ("Test 6: ....................................");

      ScaleChanger (InTemp, 'c');
      pragma Assert (InTemp = -68);

      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
      InTemp : Integer := 7;
   begin
      Put ("Test 7: ....................................");

      ScaleChanger (InTemp, 'a');
      pragma Assert (InTemp = 7);

      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
      InTemp : Integer := 0;
   begin
      Put ("Test 8: ....................................");

      ScaleChanger (InTemp, 'b');
      pragma Assert (InTemp = 0);

      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
      InTemp : Integer := 0;
   begin
      Put ("Test 9: ....................................");

      ScaleChanger (InTemp, 'f');
      pragma Assert (InTemp = -16);

      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
      InTemp : Integer := 0;
   begin
      Put ("Test 10: ....................................");

      ScaleChanger (InTemp, 'C');
      pragma Assert (InTemp = 32);

      Put_Line ("OK");
   end Test_10;

begin
   Put_Line("");
   Put_Line ("********************* Tests_ScaleChanger");
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

end tests_ScaleChanger;
