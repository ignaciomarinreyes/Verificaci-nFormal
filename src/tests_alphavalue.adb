with Ada.Text_IO; use Ada.Text_IO;
with pkg_alphavalue;     use pkg_alphavalue;

procedure tests_AlphaValue is  
   
   procedure Test_1 is
      Aux : constant Integer := 1;      
   begin
      Put ("Test 1: (Tama�o 1, una min�scula) ....................................");
      
      pragma Assert (alphaValue ("a")(1) = Aux);

      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      Aux : constant T_Array(1..2) := (0,1);      
   begin
      Put ("Test 2: (Tama�o 2, una min�scula y un car�cter desconocido) ....................................");
      
      pragma Assert (alphaValue (" a") = Aux);

      Put_Line ("OK");
   end Test_2; 
   
   procedure Test_3 is
      Aux : constant T_Array(2..4) := (0,1,3);      
   begin
      Put ("Test 3: (Tama�o 3, varias min�sculas y un car�cter desconocido) ....................................");
      
      pragma Assert (alphaValue (" ac") = Aux);

      Put_Line ("OK");
   end Test_3; 
   
   procedure Test_4 is
      Aux : constant T_Array(3..6) := (0,1,3,2);      
   begin
      Put ("Test 4: (Tama�o 4, varias min�sculas, una may�scula y un car�cter desconocido) ....................................");
      
      pragma Assert (alphaValue (" aCb") = Aux);

      Put_Line ("OK");
   end Test_4; 
   
   procedure Test_5 is
      Aux : constant T_Array(4..8) := (0,1,3,2,0);      
   begin
      Put ("Test 5: (Tama�o 5, varias min�sculas, una may�scula y varios caracteres desconocidos) ....................................");
      
      pragma Assert (alphaValue (" aCb$") = Aux);

      Put_Line ("OK");
   end Test_5; 
   
   procedure Test_6 is
      Aux : constant T_Array(4..9) := (0,1,3,2,0,26);      
   begin
      Put ("Test 6: (Tama�o 6, varias may�sculas y min�sculas, y varios caracteres desconocidos) ....................................");
      
      pragma Assert (alphaValue (" aCb$Z") = Aux);

      Put_Line ("OK");
   end Test_6;
   
   procedure Test_7 is
      Aux : constant T_Array(1..7) := (0,2,3,25,0,0,26);      
   begin
      Put ("Test 7: (Tama�o 7, varias may�sculas y min�sculas, y varios caracteres desconocidos) ....................................");
      
      pragma Assert (alphaValue (" bCY$ Z") = Aux);

      Put_Line ("OK");
   end Test_7; 
   
   procedure Test_8 is
      Aux : constant T_Array(2..9) := (0,0,0,0,0,0,0,0);      
   begin
      Put ("Test 8: (Tama�o 8, varios caracteres desconocidos) ....................................");
      
      pragma Assert (alphaValue ("        ") = Aux);

      Put_Line ("OK");
   end Test_8; 
   
   procedure Test_9 is
      Aux : constant T_Array(1..9) := (1,1,1,1,1,1,1,1,1);      
   begin
      Put ("Test 9: (Tama�o 9, varias min�sculas) ....................................");
      
      pragma Assert (alphaValue ("aaaaaaaaa") = Aux);

      Put_Line ("OK");
   end Test_9; 
   
   procedure Test_10 is
      Aux : constant T_Array(1..10) := (2,2,2,2,2,2,2,2,2,2);      
   begin
      Put ("Test 10: (Tama�o 10, varias may�sculas) ....................................");
      
      pragma Assert (alphaValue ("BBBBBBBBBB") = Aux);

      Put_Line ("OK");
   end Test_10; 

begin
   Put_Line ("********************* Tests_AlphaValue");
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

end tests_AlphaValue;
