let slider = document.getElementById("slider");

const WRITING_INTERVAL = 75;
let fakeComment = [
    "Vomitif à souhait!",
    "5/5 moi et mon compagnon avons failli mourrir!",
    "Le meilleur moment la sortie...",
    "Est ce que l'attente était l'attraction?"
]



const changetext = () => {
    comment = "";
    letter = 0;
    ; commentNumber++};

let letter = 0;
let comment = "";
let commentNumber = 0;

setTimeout(() => {
    setInterval(() => {
    
        letter++;
        comment = fakeComment[commentNumber % fakeComment.length].substring(0,letter)
        slider.innerHTML = comment
    
    }, WRITING_INTERVAL) 
} ,2000)
setInterval(changetext,8000);




