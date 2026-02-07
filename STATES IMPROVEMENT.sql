SELECT res.Release_Period, s.State_Name, m.Measure,
m.Measure_ID,
AVG(res.Bottom_box_Percentage),
AVG(res.Middle_Box_Percentage),
 avg( res.Top_box_Percentage)
 FROM patient_survey.results_state res
 JOIN 
states s ON s.State = res.State
join 
measures m ON m.Measure_ID = res.Measure_ID
 group by s.State_Name,Release_Period,Measure_ID
;