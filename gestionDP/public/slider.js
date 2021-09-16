let slider = document.getElementById("slider");

const WRITING_INTERVAL = 75;
const APPARITION_DELAY = 2000;
const CHANGE_DELAY = 8000;

let letter = 0;
let comment = "";
let commentNumber = 0;

let fakeComment = [
    "Vomitif à souhait!",
    "5/5 moi et mon compagnon avons failli mourrir!",
    "Le meilleur moment la sortie...",
    "Est ce que l'attente était l'attraction?"
]



const changetext = () => {
    comment = "";
    letter = 0;
    commentNumber++};



setTimeout(() => {
    setInterval(() => {
    
        letter++;
        comment = fakeComment[commentNumber % fakeComment.length].substring(0,letter)
        slider.innerHTML = comment
    
    }, WRITING_INTERVAL) 
} ,APPARITION_DELAY)
setInterval(changetext,CHANGE_DELAY);



let about = document.getElementById("about")
let time = new Date()
about.addEventListener("click",() => {
    alert(`Vous avez un nouveau... virus\n Aujourd'hui à ${time.getHours()}:${time.getMinutes()}:${time.getSeconds()}`)
});




