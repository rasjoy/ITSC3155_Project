window.onload = main();
var strength;
var dexterity;
var constitution;
var intelligence;
var wisdom;
var charisma;
var cantrip;
var dice = Array(6);

var raceSel = document.getElementById("race_id");
var jobSel = document.getElementById("job_id") ;
function loadRolls(roll) {
    //roll 4d6
    for (var c = 0; c < 6; c++){
        var diceArr = Array(4);
        for (var i = 0; i < 4; i++){
             diceArr[i] = Math.floor(Math.random() * 6) + 1;
        }//end for
        //sum the highest dice and place in roll
        var sortArr = diceArr.sort();
        dice[c] = (sortArr[0] + sortArr[1] + sortArr[2]);
    }//end for
    var sortArr2 = dice.sort();
    dice = sortArr2;
}//end load()

function selCheck() {
    if (raceSel.value == "" ) {
    //    //alert("Race Not Selected");
        return;
    } else if (jobSel.value == "") {
    //    //alert("Job Not Selected");
        return;
    } else {
    //    //alert("good to go");
    }
}//end selCheck

function fillValues() {
    //alert(raceSel + "\n" + jobSel);
}

function main () {
    loadRolls();
    dice.sort;
    //alert(document.forms.length);
}