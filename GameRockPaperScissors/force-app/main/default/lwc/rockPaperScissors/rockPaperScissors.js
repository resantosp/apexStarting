
import { LightningElement } from 'lwc';

const PAPER = 'paper';
const ROCK = 'rock';
const SCISSORS = 'scissors';

export default class RockPaperScissors extends LightningElement {
    playerScore = 0;
    computerScore = 0;

    playerGuess;
    computerGuess;
    winner;
}