# BenchGecko open datasets

Daily snapshots of the data [BenchGecko](https://benchgecko.ai) collects and computes about the AI economy: model prices across providers, price changes, company figures with sources, developer attention (Mindshare), GPU rental prices and the results of BenchGecko's own model tests (Gecko Tests).

Files are refreshed every day by an automated job. Every day's version is in the git history, so the history of each file is a time series.

## License

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Free to use, share and adapt, including commercially. Attribution required: **"Source: BenchGecko"** with a link to https://benchgecko.ai.

Cite as:

> BenchGecko (2026). BenchGecko open datasets. https://github.com/BenchGecko/datasets · https://benchgecko.ai

## Files

| File | What it is | Source |
|---|---|---|
| `prices/price-history.csv` | Daily list price per model (USD per 1M tokens: input, output, cache read) since 2026-03-30 | OpenRouter catalog, recorded daily |
| `prices/provider-offers.csv` | Every provider offer per model today: price, quantization, context, 1-day uptime | OpenRouter endpoints, daily |
| `prices/price-changes.csv` | Dated events: new models, price changes that held (5%+), company updates | Computed by BenchGecko |
| `companies/company-facts.csv` | Valuation, revenue, funding, headcount per AI company, each with as-of date and source URL when known | SEC filings, market close, press verified against the source page |
| `mindshare/mindshare-daily.csv` | Daily attention per model, lab, agent, person and topic: Hacker News mentions, Wikipedia views, GitHub stars, 7-day share | Hacker News Algolia API, Wikimedia, GitHub |
| `gpu/gpu-rental-daily.csv` | Median, 10th percentile and minimum on-demand rental price per GPU-hour for tracked AI chips | Vast.ai public marketplace |
| `gecko-tests/world-map.csv` | World Map test: land or water answers on a 6° grid per model, scored against Natural Earth | BenchGecko test runs |
| `gecko-tests/<test>.json` | Gecko Lab tests (who-are-you, tokenizer-tax, knowledge-horizon, same-model-different-host): questions, answer keys, every model answer and score | BenchGecko test runs |

Methodology for each test: https://benchgecko.ai/gecko-tests

Benchmark scores aggregated from third-party leaderboards are not redistributed here; see each leaderboard's own license.

## Questions or corrections

hello@benchgecko.ai
