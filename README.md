# MonteCarlo

MonteCarlo is a little application I had to develop in C# during my studies, in order to learn parallelism in .NET Framework.
I decided to re-code this in Ruby, in order to practice.

## Purpose

The purpose of this application is to simulate a casino game, in order to tell it if it would be profitable.

## Rules

There are 3 Players, the bank and 2 players.
The bank draws 3 cards, the players each draw 2 cards in a 52 cards made game.

The scores are calculated by adding every player cards' value, (exemple: player1 has got a 2 diamond and a 6 spade, his score is 8)
If a player has 2 cards with the same color, his score is increased by 20.
If the bank has 3 cards with the same color, her score is increased by 35.
If the bank has 3 cards with the same value (ex: valet, valet and valet), she wins the game.

## Simulation

The simulation is made with a million iterations made loop, in order to get an approach with Monte Carlo method.
The more iterations are there, the more precise is the simulation and the bank's win rate probability.