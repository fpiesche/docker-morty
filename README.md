# Multi-Arch Morty Builds

This repo is set up to automate creating multi-arch Docker images (arm64, amd64) for
the [Morty sanitising proxy](https://github.com/dalf/morty/).

The submodule for Morty is primarily here for future monitoring for updates via Dependabot;
the actual meat of this project is just the Dockerfile and the GitHub Actions workflow.

The finished images are available as:
- [florianpiesche/morty](https://hub.docker.com/r/florianpiesche/morty)
- [ghcr.io/fpiesche/morty](https://ghcr.io/fpiesche/morty)

The images are tagged with a semver-compatible date stamp for the day they were built, as well as
the commit ID on the [Morty repository](https://github.com/dalf/morty/) they were built from.
