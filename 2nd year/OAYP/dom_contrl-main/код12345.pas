program dom_control;
var x, y: real;
begin
  x:= -11;
  while x<=8 do
    begin
  if x < -9 then
    if (e**x)*(x**0.1*x)+(x**2)/-x <> (e**x)*(x**0.1*x)+(x**2)/-x then
    writeln ('Решения нет')
    else write ((e**x)*(x**0.1*x)+(x**2)/-x);
  if (-9 <= x) and (x < -2) then
    writeln ('x = ', x:2:1,'; ',' y = ', x*98-(e**x));
  if (-2 <= x) and (x < 6) then
    writeln ('x = ', x:2:1,'; ',' y = ', (power(x,2)-x));
  if 6 <= x then
    writeln ('x = ', x:2:1,'; ',' y = ', 96 + (e**x));
  x:= x + 0.1;
  end;
end.