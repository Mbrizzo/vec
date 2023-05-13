// esse código é de uma linguagem propritária de uma plataforma que utilizo, só estou usando .pas para ter a marcação.

var
r_ac : float;
r_prev_ac : float;
mf_ac : float;
ms_ac : float;
mf_prev_ac : float;
ms_prev_ac : float;

begin
r_ac        := AccuDistr;
r_prev_ac   := AccuDistr[1];
mf_ac       := xAverage(r_ac,9);
mf_prev_ac  := mf_ac[1];
ms_ac       := xAverage(r_ac,50);
ms_prev_ac  := ms_ac[1];


if (r_prev_ac< mf_prev_ac) and ( r_ac > ms_ac) then
    PlotText("Buy", clRed, -1)
else if (r_prev_ac > mf_prev_ac) and (r_ac < ms_ac) then
    PlotText("Sell", clRed, -1)

if (r_prev_ac < mf_prev_ac) and (r_ac > mf_ac) and (r_prev_ac < ms_prev_ac) and (r_ac > ms_ac) then
PaintBar(clBlue)
else if (r_prev_ac > mf_prev_ac) and (r_ac < mf_ac) and (r_prev_ac > ms_prev_ac) and (r_ac < ms_ac) then
PaintBar(clYellow)

end

