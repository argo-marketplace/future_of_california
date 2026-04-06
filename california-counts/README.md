# California Counts

A digital garden exploring California's open data to understand how the state spends public money and to pioneer ideas for a brighter future.

Built on data from [Open FI$Cal](https://open.fiscal.ca.gov/), the [California State Controller](https://bythenumbers.sco.ca.gov/), and other public sources. Powered by [Quartz](https://quartz.jzhao.xyz/).

## Posts

- [What the Governor's Checkbook Tells Us](content/governors-office-spending.md) — An analysis of Governor's Office (Dept. 0500) spending from FY19-FY24 using Open FI$Cal data
- [Inside the Back Office](content/govops-back-office.md) — What a decade of GovOps (Dept. 0511) spending data reveals about who actually runs state government

## Contributing

Got a dataset you want analyzed? See something wrong in the numbers? [Open an issue](https://github.com/argo-marketplace/future_of_california/issues/new) or submit a pull request. Posts live in the `content/` directory as markdown files.

## Local Development

```bash
cd california-counts
npm ci
npx quartz build --serve
```

Requires Node v22+.
