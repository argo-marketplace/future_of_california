# The Future of California

A digital garden exploring California as it is and how we might work together to make it better.

**Live site:** [futureofcalifornia.org](https://futureofcalifornia.org)

## About

From the world's largest port to the nation's first freeways to pioneering aqueducts, California's history has been defined by visionary public works. This repository is an open, evolving collection of ideas for the next generation of those works — public technology, institutional reform, data infrastructure, and education ecosystems worthy of California's people.

This project originated as the [California Public Technology Principles](https://argo-marketplace.github.io/future_of_california/), developed through the CA Public Technology Roundtable. It is forked from [argo-marketplace/future_of_california](https://github.com/argo-marketplace/future_of_california) and has since grown to encompass a broader vision.

## Built With

- [Quartz v4](https://quartz.jzhao.xyz/) — static site generator for digital gardens
- [Cloudflare Pages](https://pages.cloudflare.com/) — hosting
- Markdown content, wikilinks, backlinks, graph view

## Local Development

```bash
git clone https://github.com/patwater/future_of_california.git
cd future_of_california
npm i
npx quartz build --serve
```

## Deploy

Deployed automatically via Cloudflare Pages on push to `v4` branch.

Build command: `npx quartz build`
Build output: `public`
Production branch: `v4`

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Please consider the lesson of [Chesterton's Fence](https://en.wikipedia.org/wiki/Wikipedia:Chesterton%27s_fence) before proposing changes.

## License

MIT
