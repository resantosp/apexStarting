
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
        this.generateComputerGuess();
        this.determineWinner();
    }

    generateComputerGuess(){
        const random = Math.floor(Math.random() * 3);
        console.log('the random number is ${random}');

        if(random === 0){
            this.computerGuess = ROCK;
        }else if(random === 1){
            this.computerGuess = PAPER;
        }else{
            this.computerGuess = SCISSORS;
        }
    }

    determineWinner(){
        if(this.playerGuess === this.computerGuess){
            this.winner = 'draw!';
            return;
        }

        if(this.playerGuess === ROCK && this.computerGuess === SCISSORS){
            this.winner = 'you! :)';
        }else if(this.playerGuess === SCISSORS && this.computerGuess === PAPER){
            this.winner = 'you! :)';
        }else if(this.playerGuess === PAPER && this.computerGuess === ROCK){
            this.winner = 'you! :)';
        }else{
            this.winner = 'computer! :('
        }
    }
}