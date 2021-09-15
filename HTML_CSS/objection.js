const audio = new Audio("phoenix-objection.mp3");
const objection = document.getElementById("objection")
objection.addEventListener("click",()=>{
    console.log("ok")
    audio.play()
})