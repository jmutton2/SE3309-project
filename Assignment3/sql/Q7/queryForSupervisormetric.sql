select supervisedBy, totalmaintsupervised,maintainCostAvg 
from supervisorMetric
where maintainCostAvg in (SELECT min(maintainCostAvg)
		from supervisorMetric
		group by totalMaintSupervised
        )