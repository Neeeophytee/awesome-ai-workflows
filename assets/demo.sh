#!/usr/bin/env bash
# Scripted demo for the README GIF. Prints the "verify -> a recipe breaks ->
# the badge drops" story at a readable pace. It does NOT run the real (slow,
# noisy) suite; it's a faithful re-enactment of what `npm run verify` shows.
# Record it with VHS (assets/verify.tape) or a screen recorder.

g=$'\e[32m'; r=$'\e[31m'; d=$'\e[2m'; b=$'\e[1m'; x=$'\e[0m'
line() { printf '%b\n' "$1"; sleep "${2:-0.35}"; }

clear
line "${d}\$ npm run verify${x}" 0.9
line "${g}✓${x} opencode-plan-before-build      2/2" 0.25
line "${g}✓${x} kilocode-file-scoped-mode       2/2" 0.25
line "${g}✓${x} okf-repo-knowledge-bundle       3/3" 0.25
line "${g}✓${x} local-llm-read-a-photo-vision   2/2" 0.5
line "${b}${g}● 65 / 65 recipes CI-verified${x}" 2.0
line ""
line "${d}# upstream: gemma3 bumped, a step changes...${x}" 1.2
line "${d}\$ npm run verify${x}" 0.9
line "${g}✓${x} opencode-plan-before-build      2/2" 0.25
line "${g}✓${x} okf-repo-knowledge-bundle       3/3" 0.3
line "${r}✗${x} local-llm-read-a-photo-vision   ${r}FAILED${x}" 0.8
line "${b}${r}● 64 / 65 recipes CI-verified${x}" 1.2
line "${d}the badge drops automatically. that is the whole point.${x}" 2.5
