# Homebrew Tap for Timich

This tap installs Timich command-line tools from published GitHub release
artifacts.

## Install Timich MCP

```sh
brew install rsahara/timich/timich-mcp
```

Check the installed binary:

```sh
timich-mcp version
```

Pair it with a Timich Agent on your trusted LAN:

```sh
timich-mcp pair --agent-url http://HOME-SERVER:8082 --pairing-code CODE
```

## Upgrade

```sh
brew upgrade rsahara/timich/timich-mcp
```

## Formulae

- `timich-mcp`: local stdio MCP server for searching and previewing photos and
  videos through a paired Timich Agent.

## Release Maintenance

`timich-mcp` release archives are published from
[rsahara/timich-mcp](https://github.com/rsahara/timich-mcp/releases). Update
`Formula/timich-mcp.rb` when a new release is published by changing:

- `version`
- each OS/architecture `url`
