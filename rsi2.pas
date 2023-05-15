var
r_rsi: float;
prev_rsi: float;

begin
r_rsi := RSI(2, 0);
prev_rsi := r_rsi[1];

if (prev_rsi <= 5) and (r_rsi > 5) then
    PaintBar(clBlue)
else if (prev_rsi >= 95) and (r_rsi < 95) then
    PaintBar(clYellow);

end.