
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

    /**
     * 
     * so when the user clicks the buttom, it should take the value out of the event and bind it up to our playerGuess property and render that on the screen because of the following method
     */
    handleClick(event){
        this.playerGuess = event.target.name;
    }

    generateComputerGuess(){
        const random = Math.floor(Math.random() * 3);
        console.log('the random number is ${random}');
    }
}