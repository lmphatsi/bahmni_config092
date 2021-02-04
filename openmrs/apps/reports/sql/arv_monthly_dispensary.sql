	
select DrugName, 
	IF(id is null, 0,SUM(IF(outcome = 'drug_count',1,0))) AS "Total_Dispensed"
    
FROM ( select id, outcome, DrugName
	FROM (
	(select distinct order_id as id, 'drug_count' as outcome, 'Abacavir_(ABC)_300mg' as DrugName
					from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 390
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Abacavir/Lamivudine (ABC/3TC) - 600/300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 377
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Atazanavir_(ATV) _300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 379
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)

UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Atazanavir/Ritonavir (ATV/RIV) - 300/100mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 391
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)

UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Darunavir_(DVR)_300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 385
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Darunavir (DVR) - 600mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 386
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Dolutegravir (DTG) - 50mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 355
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Efavirenz (EFV) - 600mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 357
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Etravirine (ETV) - 100mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 395
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Lamivudine (3TC) - 150mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 359
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Lopinavir/Ritonavir (LPV/r) - 200/50mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 374
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Nevirapine (NVP) - 200mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 358
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Raltegravir (RAL) - 400mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 380
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Ritonavir (RIV) - 100mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 378
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Tenofovir (TDF) - 300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 354
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Tenofovir/Lamivudine (TDF/3TC) - 300/300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 376
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Tenofovir/Lamivudine/Dolutegravir (TDF/3TC/DTG) - 300/300/50mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 368
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Tenofovir/Lamivudine/Efavirenz (TDF/3TC/EFV) - 300/300/400mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 396
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Tenofovir/Lamivudine/Efavirenz (TDF/3TC/EFV) - 300/300/600mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 388
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Zidovudine (AZT) - 300mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 360
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Zidovudine/Lamivudine (AZT/3TC)- 300/150mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 375
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Zidovudine/Lamivudine/Nevirapine (AZT/3TC/NVP) - 300/150/200mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 389
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Abacavir (ABC) - 60mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 363
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Abacavir/lamivudine (ABC/3TC) - 120/60mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 369
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Darunavir (DRV) - 75mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 373
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Efavirenz (EFV) - 200mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 351
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Lopinavir/Ritonavir (LPV/r) - 80mg/20ml' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 370
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Lopinavir/Ritonavir (LPV/r) - 40/10mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 372
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Lopinavir/Ritonavir (LPV/r) - 100/25mg ' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 371
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Nevirapine (NVP) - 50mg/5ml' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 367
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Raltegravir (RAL) - 100mg ' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 392
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Zidovudine/Lamivudine (AZT/3TC) - 60/30mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 393
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)
UNION
(select distinct order_id as id, 'drug_count' as outcome, 'Zidovudine/Lamivudine/Nevirapine (AZT/3TC/NVP) - 60/30/50mg' as DrugName
							from (
										select drug_order.drug_inventory_id, drug_order.order_id from orders o 
										inner join drug_order on o.order_id = drug_order.order_id
										inner join order_type on o.order_type_id = order_type.order_type_id AND order_type.order_type_id = 2
										where drug_inventory_id = 394
										AND MONTH(o.date_activated) = MONTH(CAST('#endDate#' AS DATE))
										AND YEAR(o.date_activated) =  YEAR(CAST('#endDate#' AS DATE))
									)as A
)



 )AS tb1
) AS tbm
group by DrugName
