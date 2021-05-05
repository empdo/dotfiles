var engine="https://duckduckgo.com/"
var logos = document.querySelectorAll(".logo");

console.log(logos);

function removeUnderline(NotToRemove){
    for(var i=0; i< logos.length; i++){
        logos[i].attributes.value === NotToRemove ? console.log("yes") : logos[i].style.borderBottom = null;
    }
}

document.querySelector('#inputStuff').addEventListener("submit", (e) => {
    var inputField=document.querySelector("#actualInputStuff");
    window.open(engine+inputField.value);
    inputField.value="";
    e.preventDefault();
});

for(var i=0; i< logos.length; i++){
    logos[i].addEventListener("click", (e)=>{
        console.log(e);
        engine = e.target.attributes.value.value;
        e.target.style.borderBottom = "2px solid white";
        removeUnderline(e.target.attributes.value);
    })
}

