# Queries and Reporting

## Query Set

| Query | Purpose | Main SQL concepts |
|---|---|---|
| Application details | Show who applied to which role and company. | Inner joins, concatenation, ordering |
| Applications per posting | Measure posting demand, including postings with no applications. | Left join, `COUNT`, grouping |
| Interview schedule | Track interview dates, times and outcomes. | Multi-table joins, ordering |
| Accepted offers | Report successful placements and start dates. | Filtering, joins |
| Offers by company | Compare the number of offers produced by employers. | Aggregation, grouping |
| Average placed GPA | Calculate the GPA trend among accepted placements. | `AVG`, `ROUND`, filtering |

The executable statements are stored in [`sql/03-reporting-queries.sql`](../sql/03-reporting-queries.sql).

## Validated Portfolio Results

- Applications: **7**
- Interviews: **4**
- Accepted offers: **2**
- Average GPA of students accepting offers: **3.38**

![Reporting summary](../assets/illustrative-outputs/reporting-summary.svg)

Machine-readable expected outputs are stored in the [`outputs`](../outputs/) folder.
