with Ada.Text_IO; use Ada.Text_IO;
with pkg_reversestring;     use pkg_reversestring;

procedure tests_ReverseString is

   procedure Test_1 is
   begin
      Put ("Test 1: (h) ....................................");

      pragma Assert (reverseString ("h") = "h");

      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
   begin
      Put ("Test 2: (ho) .................................");

      pragma Assert (reverseString ("ho") = "oh");

      Put_Line ("OK");
   end Test_2;

   procedure Test_3 is
   begin
      Put ("Test 3: (Hola)   .................................");

      pragma Assert (reverseString ("Hola") = "aloH");

      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
   begin
      Put ("Test 4: (Hola Bola) ..............................");

      pragma Assert (reverseString ("Hola Bola") = "aloB aloH");

      Put_Line ("OK");
   end Test_4;

   procedure Test_5 is
   begin
      Put ("Test 5: ( aloH Bola) ....................................");

      pragma Assert (reverseString (" aloH Bola") = "aloB Hola ");

      Put_Line ("OK");
   end Test_5;

   procedure Test_6 is
   begin
      Put ("Test 6: (ALoh  alOB ) ....................................");

      pragma Assert (reverseString ("ALoh  alOB ") = " BOla  hoLA");

      Put_Line ("OK");
   end Test_6;

   procedure Test_7 is
   begin
      Put ("Test 7: (paquitor) ....................................");

      pragma Assert (reverseString ("paquitor") = "rotiuqap");

      Put_Line ("OK");
   end Test_7;

   procedure Test_8 is
   begin
      Put ("Test 8: (oro) ....................................");

      pragma Assert (reverseString ("oro") = "oro");

      Put_Line ("OK");
   end Test_8;

   procedure Test_9 is
   begin
      Put ("Test 9: (un dia vi una vaca vestida de uniforme) ....................................");

      pragma Assert (reverseString ("un dia vi una vaca vestida de uniforme") = "emrofinu ed aditsev acav anu iv aid nu");

      Put_Line ("OK");
   end Test_9;

   procedure Test_10 is
   begin
      Put ("Test 10: (process terminated successfully) ....................................");

      pragma Assert (reverseString ("process terminated successfully") = "yllufsseccus detanimret ssecorp");

      Put_Line ("OK");
   end Test_10;

begin
   Put_Line("");
   Put_Line ("********************* Tests_ReverseString");
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

end tests_ReverseString;
