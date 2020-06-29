with Ada.Text_IO; use Ada.Text_IO;
with Pkg_sumVector;     use Pkg_sumVector;

procedure tests_sumVector is

   procedure Test_1 is
      Aux : constant T_Vector(1..1) := (1 => 0);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = 0);

      Put_Line ("Test 1..................................................OK");
   end Test_1;

   procedure Test_2 is
      Aux : constant T_Vector(1..5) := (1,8,3,0,5);
      sum : Natural := 10;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = 4);

      Put_Line ("Test 2..................................................OK");
   end Test_2;

   procedure Test_3 is
      Aux : constant T_Vector(1..6) := (10, 10 , 22, 22, 10, 10);
      sum : Natural := 60;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = 16);

      Put_Line ("Test 3..................................................OK");
   end Test_3;

   procedure Test_4 is
      Aux : constant T_Vector(1..2) := (Natural'Last, Natural'First);
      sum : Natural := 1;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = (Natural'Last/2));

      Put_Line ("Test 4..................................................OK");
   end Test_4;

   procedure Test_5 is
      Aux : constant T_Vector(1..3) := (13, Natural'Last, 13);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = (Natural'Last));

      Put_Line ("Test 5..................................................OK");
   end Test_5;

   procedure Test_6 is
      Aux : constant T_Vector(1..1) := (1 => Natural'Last);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = Natural'Last);

      Put_Line ("Test 6..................................................OK");
   end Test_6;

   procedure Test_7 is
      Aux : constant T_Vector(1..1) := (1 => Natural'First);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = 0);

      Put_Line ("Test 7..................................................OK");
   end Test_7;

   procedure Test_8 is
      Aux : constant T_Vector(1..100) := (90, 60, Natural'Last, 16, 24, 0, 10658, 1, 8469, others => 16);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = Natural'Last/2);

      Put_Line ("Test 8..................................................OK");
   end Test_8;

   procedure Test_9 is
      Aux : constant T_Vector(1..200) := (Natural'Last, Natural'Last, Natural'Last, Natural'Last, Natural'Last, others => Natural'First);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = Natural'Last/2);

      Put_Line ("Test 9..................................................OK");
   end Test_9;

   procedure Test_10 is
      Aux : constant T_Vector(1..50) := (45, 1, 45, 1, 45, 1, 45, 1, others => 45);
      sum : Natural := 0;
   begin

      sumVector (Aux, sum);
      pragma Assert (sum = 23);

      Put_Line ("Test 10..................................................OK");
   end Test_10;

begin
   Put_Line("");
   Put_Line ("********************* Tests_sumVector");
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

end tests_sumVector;
