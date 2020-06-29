
package pkg_scalechanger with SPARK_Mode is

   procedure scaleChanger (InTemp : in out Integer; InScale : in Character)
   --Procedure that receives one input parameter: origin scale as an character. And it receives one
   --input output parameter: temperature origin as an integer.
   --Procedure transforms temperature from Celsius to Fahrenheit or vice versa. If the input
   --character is 'Cc' or 'Ff', the output temperature scale is the opposite. If another character
   --is read, the transformation is not performed.

   with
      Global  => null,
      Depends => (InTemp => (InTemp, InScale)),
      Pre     => (if (InScale = 'c' or InScale = 'C') and then InTemp >= 0 then
                         InTemp <= (Integer'Last/2) - 32
                  elsif (InScale = 'c' or InScale = 'C') and then InTemp < 0 then
                         InTemp >= (Integer'First/2)
                  elsif (InTemp < 0) then
                         InTemp >= Integer'First + 32),
      Post    => (if InScale = 'c' or InScale = 'C' then
                     InTemp = InTemp'Old * 2 + 32
                 elsif InScale = 'f' or InScale = 'F' then
                     InTemp = (InTemp'Old - 32) / 2
                 else
                     InTemp = Intemp'Old);

end pkg_scalechanger;
