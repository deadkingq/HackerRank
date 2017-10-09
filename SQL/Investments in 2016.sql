select sum(I.TIV_2016) as TIV_2016
From Insurance I
Where I.Pid In (select I1.PID
    From Insurance I1, Insurance I2
    Where I1.TIV_2015 = I2.TIV_2015
    and I1.PID <> I2.Pid) 

and I.Pid Not In (select I1.PID
    From Insurance I1, Insurance I2
    Where I1.LAT = I2.LAT
    and I1.LON = I2.LON
    and I1.Pid <> I2.Pid)
