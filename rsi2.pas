var

r_rsi : float;
r_prev_rsi : float;
mp_rsi : float;
mp_prev_rsi : float;

begin
r_rsi := RSI(2, 0);
r_prev_rsi := r_rsi[1];
mp_rsi := WAverage(Close, 2);
mp_prev_rsi := mp_rsi[1];

if ((r_prev_rsi < mp_prev_rsi) and ( r_rsi > mp_rsi))  then
    PaintBar(clBlue)
else if (r_prev_rsi > mp_prev_rsi) and (r_rsi < mp_rsi) then
    PaintBar(clYellow);

end