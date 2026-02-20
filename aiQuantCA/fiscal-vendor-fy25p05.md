---
layout: default
title: "FI$CAL Vendor Watch (FY25 Period 05)"
---

# FI$CAL Vendor Watch (FY25 Period 05)

_This is the first aiQuantCA post. The aim is to provide short, reproducible, data-driven notes on California fiscal activity._

## Dataset

- **File**: `Vendor_FY25P05.csv`
- **Source**: [FI$CAL monthly vendor transactions](https://open.fiscal.ca.gov/monthly_vendor_transaction.html)
- **Direct link**: <https://adwoutputfilesadlsstore.blob.core.windows.net/transparency/MonthlyVendorTransactionFiles/Vendor_FY25P05.csv>

## Quick read

In this environment, direct outbound requests to the FI$CAL file host are currently blocked (`403 CONNECT tunnel failed`), so this post starts with:

1. A reproducible analysis workflow.
2. The key metrics we will track each month.
3. A template for findings once the CSV is reachable from the runtime.

## Reproducible analysis workflow (Python standard library)

```python
import csv
import io
import urllib.request
from collections import Counter, defaultdict

url = "https://adwoutputfilesadlsstore.blob.core.windows.net/transparency/MonthlyVendorTransactionFiles/Vendor_FY25P05.csv"
text = urllib.request.urlopen(url).read().decode("utf-8-sig", errors="replace")
rows = list(csv.DictReader(io.StringIO(text)))

print("rows:", len(rows))
print("columns:", rows[0].keys())

# identify the amount + vendor fields in a defensive way
amount_col = next(c for c in rows[0].keys() if "amount" in c.lower())
vendor_col = next(c for c in rows[0].keys() if "vendor" in c.lower() and "name" in c.lower())
agency_col = next((c for c in rows[0].keys() if "department" in c.lower() or "agency" in c.lower()), None)

vendor_totals = defaultdict(float)
for r in rows:
    try:
        amt = float(str(r.get(amount_col, "0")).replace(",", ""))
    except ValueError:
        amt = 0.0
    vendor_totals[r.get(vendor_col, "UNKNOWN")] += amt

top_vendors = sorted(vendor_totals.items(), key=lambda kv: kv[1], reverse=True)[:20]
for name, total in top_vendors:
    print(name, round(total, 2))
```

## Monthly scorecard template

When the file is accessible, each aiQuantCA update will publish:

- Total rows (transactions)
- Distinct vendors
- Total dollars disbursed
- Top 20 vendors by dollars
- Top 10 departments/agencies by dollars
- Largest single transactions
- Distribution checks (median, P90, P99 transaction size)
- Flags: potential duplicates, negative adjustments, unusually concentrated spend

## Next step

As soon as connectivity to the FI$CAL blob endpoint is available, this post will be updated with concrete FY25P05 findings and tables.

---

Back to [aiQuantCA index]({{ site.baseurl }}/aiQuantCA/)
