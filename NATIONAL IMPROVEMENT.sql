SELECT res.Release_Period, m.measure,  res.Measure_ID,
avg(res.Bottom_box_Percentage),
avg(res.Middle_box_Percentage),
avg(res.Top_box_Percentage) 
FROM patient_survey.national_results res
join 
measures m
on m.Measure_ID = res.Measure_ID
group by res.Release_Period,res.Measure_ID ;