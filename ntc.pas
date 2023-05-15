input

ntradeP(1);
periodo(1);

var
r_trades 	: float;
prev_trades 	: float;
variacao_pct : float;

begin

r_trades 	:= Trades;
prev_trades	:= r_trades[1];

variacao_pct := RateOfChange(close, periodo);

if (r_trades > ntradeP*prev_trades) and (variacao_pct > 0) then
    PaintBar(clBlue);
end






