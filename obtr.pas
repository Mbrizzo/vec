var

r_obtr : float;
m_obtr : float;
r_prev : float;
m_prev : float;

begin
r_obtr := OnBalanceTR;
r_prev := OnBalanceTR[1];
m_obtr := xAverage(r_obtr,50);
m_prev := m_obtr[1];

if ((r_prev < m_prev) and ( r_obtr > m_obtr))  then
        PaintBar(clBlue)
else if (r_prev > m_prev) and (r_obtr < m_obtr) then
    PaintBar(clYellow);;

end
