WITH  
CTE AS (  
  
  
SELECT   
CASE  
WHEN (daga.asset_group_id = '2') then 'Group 1'  
WHEN (daga.asset_group_id = '29') then 'Group 2'  
WHEN (daga.asset_group_id = '25') then 'Group 3'  
WHEN (daga.asset_group_id = '56') then 'Group 4'  
WHEN (daga.asset_group_id = '55') then 'Group 5'  
WHEN (daga.asset_group_id = '40') then 'Group 6'  
WHEN (daga.asset_group_id = '4') then 'Group 7'  
WHEN (daga.asset_group_id = '66') then 'Group 8'  
WHEN (daga.asset_group_id = '28') then 'Group 9'  
WHEN (daga.asset_group_id = '26') then 'Group 10'  
WHEN (daga.asset_group_id = '8') then 'Group 11'  
WHEN (daga.asset_group_id = '27') then 'Group 12'  
END AS asset_group,   
  
  
count (favf.vulnerability_instances) AS Urgent_beyond_SLA,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Critical_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS High_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Medium_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Low_beyond_SLA  
  
  
  
  
FROM fact_asset_vulnerability_finding favf   
   JOIN dim_vulnerability dv USING (vulnerability_id)   
   JOIN dim_asset_group_asset daga USING (asset_id)  
   JOIN dim_tag_asset dta USING (asset_id)  
WHERE daga.asset_group_id IN (2,4,8,25,26,27,28,29,40,55,56,66) AND    
(  
(dta.tag_id = 1 AND 2*dv.riskscore >= 1201 ) OR  
(dta.tag_id = 2 AND 1.2*dv.riskscore >= 1201 ) OR  
(dta.tag_id = 3 AND 1.1*dv.riskscore >= 1201 ) OR  
(dta.tag_id = 4 AND dv.riskscore >= 1201) OR  
(dta.tag_id = 5 AND .75*dv.riskscore >= 1201 ) OR  
(dta.tag_id NOT IN (1,2,3,4,5)  AND dta.tag_id = 90 AND dv.riskscore >= 1201 )  
)  
GROUP BY daga.asset_group_id  
  
  
  
  
  
  
  
  
union all  
  
  
  
  
  
  
  
  
SELECT   
CASE  
WHEN (daga.asset_group_id = '2') then 'Group 1'  
WHEN (daga.asset_group_id = '29') then 'Group 2'  
WHEN (daga.asset_group_id = '25') then 'Group 3'  
WHEN (daga.asset_group_id = '56') then 'Group 4'  
WHEN (daga.asset_group_id = '55') then 'Group 5'  
WHEN (daga.asset_group_id = '40') then 'Group 6'  
WHEN (daga.asset_group_id = '4') then 'Group 7'  
WHEN (daga.asset_group_id = '66') then 'Group 8'  
WHEN (daga.asset_group_id = '28') then 'Group 9'  
WHEN (daga.asset_group_id = '26') then 'Group 10'  
WHEN (daga.asset_group_id = '8') then 'Group 11'  
WHEN (daga.asset_group_id = '27') then 'Group 12'  
END AS asset_group,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Urgent_beyond_SLA,  
  
  
count (favf.vulnerability_instances) AS Critical_beyond_SLA,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS High_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Medium_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Low_beyond_SLA  
  
  
  
  
FROM fact_asset_vulnerability_finding favf   
   JOIN dim_vulnerability dv USING (vulnerability_id)   
   JOIN dim_asset_group_asset daga USING (asset_id)  
   JOIN dim_tag_asset dta USING (asset_id)  
     
WHERE daga.asset_group_id IN (2,4,8,25,26,27,28,29,40,55,56,66) AND    
(  
(dta.tag_id = 1 AND 2*dv.riskscore >= 900 AND 2*dv.riskscore <= 1200) OR  
(dta.tag_id = 2 AND 1.2*dv.riskscore >= 900 AND 1.2*dv.riskscore <= 1200) OR  
(dta.tag_id = 3 AND 1.1*dv.riskscore >= 900 AND 1.1*dv.riskscore <= 1200) OR  
(dta.tag_id = 4 AND dv.riskscore >= 900 AND dv.riskscore <= 1200) OR  
(dta.tag_id = 5 AND .75*dv.riskscore >= 900 AND .75*dv.riskscore <= 1200) OR  
(dta.tag_id NOT IN (1,2,3,4,5)  AND dta.tag_id = 90 AND dv.riskscore >= 900 AND dv.riskscore <= 1200)  
)  
  
  
GROUP BY daga.asset_group_id  
  
  
  
  
  
  
  
  
  
  
union all  
  
  
  
  
  
  
  
  
SELECT   
CASE  
WHEN (daga.asset_group_id = '2') then 'Group 1'  
WHEN (daga.asset_group_id = '29') then 'Group 2'  
WHEN (daga.asset_group_id = '25') then 'Group 3'  
WHEN (daga.asset_group_id = '56') then 'Group 4'  
WHEN (daga.asset_group_id = '55') then 'Group 5'  
WHEN (daga.asset_group_id = '40') then 'Group 6'  
WHEN (daga.asset_group_id = '4') then 'Group 7'  
WHEN (daga.asset_group_id = '66') then 'Group 8'  
WHEN (daga.asset_group_id = '28') then 'Group 9'  
WHEN (daga.asset_group_id = '26') then 'Group 10'  
WHEN (daga.asset_group_id = '8') then 'Group 11'  
WHEN (daga.asset_group_id = '27') then 'Group 12'  
END AS asset_group,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Urgent_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Critical_beyond_SLA,  
  
  
count (favf.vulnerability_instances) AS High_beyond_SLA,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Medium_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Low_beyond_SLA  
  
  
  
  
FROM fact_asset_vulnerability_finding favf   
   JOIN dim_vulnerability dv USING (vulnerability_id)   
   JOIN dim_asset_group_asset daga USING (asset_id)  
   JOIN dim_tag_asset dta USING (asset_id)  
  
  
WHERE daga.asset_group_id IN (2,4,8,25,26,27,28,29,40,55,56,66) AND 
(  
(dta.tag_id = 1 AND 2*dv.riskscore >= 600 AND 2*dv.riskscore <= 899) OR  
(dta.tag_id = 2 AND 1.2*dv.riskscore >= 600 AND 1.2*dv.riskscore <= 899) OR  
(dta.tag_id = 3 AND 1.1*dv.riskscore >= 600 AND 1.1*dv.riskscore <= 899) OR  
(dta.tag_id = 4 AND dv.riskscore >= 600 AND dv.riskscore <= 899) OR  
(dta.tag_id = 5 AND .75*dv.riskscore >= 600 AND .75*dv.riskscore <= 899) OR  
(dta.tag_id NOT IN (1,2,3,4,5)  AND dta.tag_id = 90 AND dv.riskscore >= 600 AND dv.riskscore <= 899)     
)   
GROUP BY daga.asset_group_id  
  
  
  
  
  
  
  
  
  
  
  
  
union all  
  
  
  
  
  
  
  
  
  
  
SELECT   
CASE  
WHEN (daga.asset_group_id = '2') then 'Group 1'  
WHEN (daga.asset_group_id = '29') then 'Group 2'  
WHEN (daga.asset_group_id = '25') then 'Group 3'  
WHEN (daga.asset_group_id = '56') then 'Group 4'  
WHEN (daga.asset_group_id = '55') then 'Group 5'  
WHEN (daga.asset_group_id = '40') then 'Group 6'  
WHEN (daga.asset_group_id = '4') then 'Group 7'  
WHEN (daga.asset_group_id = '66') then 'Group 8'  
WHEN (daga.asset_group_id = '28') then 'Group 9'  
WHEN (daga.asset_group_id = '26') then 'Group 10'  
WHEN (daga.asset_group_id = '8') then 'Group 11'  
WHEN (daga.asset_group_id = '27') then 'Group 12'  
END AS asset_group,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Urgent_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Critical_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS High_beyond_SLA,  
  
  
count (favf.vulnerability_instances) AS Medium_beyond_SLA,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Low_beyond_SLA  
  
  
  
  
FROM fact_asset_vulnerability_finding favf   
   JOIN dim_vulnerability dv USING (vulnerability_id)   
   JOIN dim_asset_group_asset daga USING (asset_id)  
   JOIN dim_tag_asset dta USING (asset_id)  
     
WHERE daga.asset_group_id IN (2,4,8,25,26,27,28,29,40,55,56,66) AND    
(  
(dta.tag_id = 1 AND 2*dv.riskscore >= 300 AND 2*dv.riskscore <= 599) OR  
(dta.tag_id = 2 AND 1.2*dv.riskscore >= 300 AND 1.2*dv.riskscore <= 599) OR  
(dta.tag_id = 3 AND 1.1*dv.riskscore >= 300 AND 1.1*dv.riskscore <= 599) OR  
(dta.tag_id = 4 AND dv.riskscore >= 300 AND dv.riskscore <= 599) OR  
(dta.tag_id = 5 AND .75*dv.riskscore >= 300 AND .75*dv.riskscore <= 599) OR  
(dta.tag_id NOT IN (1,2,3,4,5)  AND dta.tag_id = 90 AND dv.riskscore >= 300 AND dv.riskscore <= 599)     
)    
  
  
GROUP BY daga.asset_group_id  
  
  
  
  
  
  
  
  
  
  
union all  
  
  
  
  
  
  
  
  
SELECT   
CASE  
WHEN (daga.asset_group_id = '2') then 'Group 1'  
WHEN (daga.asset_group_id = '29') then 'Group 2'  
WHEN (daga.asset_group_id = '25') then 'Group 3'  
WHEN (daga.asset_group_id = '56') then 'Group 4'  
WHEN (daga.asset_group_id = '55') then 'Group 5'  
WHEN (daga.asset_group_id = '40') then 'Group 6'  
WHEN (daga.asset_group_id = '4') then 'Group 7'  
WHEN (daga.asset_group_id = '66') then 'Group 8'  
WHEN (daga.asset_group_id = '28') then 'Group 9'  
WHEN (daga.asset_group_id = '26') then 'Group 10'  
WHEN (daga.asset_group_id = '8') then 'Group 11'  
WHEN (daga.asset_group_id = '27') then 'Group 12'  
END AS asset_group,   
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Urgent_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Critical_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS High_beyond_SLA,  
  
  
CASE  
WHEN (1=1) then sum(1-1)  
END AS Medium_beyond_SLA,  
  
  
count (favf.vulnerability_instances) AS Low_beyond_SLA  
  
  
  
  
FROM fact_asset_vulnerability_finding favf   
   JOIN dim_vulnerability dv USING (vulnerability_id)   
   JOIN dim_asset_group_asset daga USING (asset_id)  
   JOIN dim_tag_asset dta USING (asset_id)  
  
  
WHERE daga.asset_group_id IN (2,4,8,25,26,27,28,29,40,55,56,66) AND   
(  
(dta.tag_id = 1 AND 2*dv.riskscore <= 299) OR  
(dta.tag_id = 2 AND  1.2*dv.riskscore <= 299) OR  
(dta.tag_id = 3 AND  1.1*dv.riskscore <= 299) OR  
(dta.tag_id = 4 AND  dv.riskscore <= 299) OR  
(dta.tag_id = 5 AND  .75*dv.riskscore <= 299) OR  
(dta.tag_id NOT IN (1,2,3,4,5)  AND dta.tag_id = 90  AND dv.riskscore <= 299)     
)    
  
  
GROUP BY daga.asset_group_id  
  
  
)  
  
  
  
  
SELECT asset_group, SUM(urgent_beyond_sla) AS urgent_beyond_sla, SUM(critical_beyond_sla) AS critical_beyond_sla, SUM(high_beyond_sla) AS high_beyond_sla,   
SUM(medium_beyond_sla) AS medium_beyond_sla, SUM(low_beyond_sla) AS low_beyond_sla  
FROM CTE  
GROUP BY asset_group 
