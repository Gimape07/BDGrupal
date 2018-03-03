var nCap = 1;

function agregarCapsula(){
    let cap = document.getElementById("formaCapsula");
    cap.style.visibility = "visible";
}

function guardarCapsula(e){
    let desc = this.des.value;
    let url = this.link.value;
    if (nCap == 1){
        let cap1 = document.getElementById("capT1");
        cap1.innerHTML = "<p>"+desc+"</p>";
        cap1 = document.getElementById("capsula1");
        cap1.src = url;
        nCap++;
    }
    else if (nCap == 2){
        let cap2 = document.getElementById("capT2");
        cap2.innerHTML = "<p>"+desc+"</p>";
        cap2 = document.getElementById("capsula2");
        cap2.src = url;
        nCap++;
    }
    else if (nCap == 3){
        let cap3 = document.getElementById("capT3");
        cap3.innerHTML = "<p>"+desc+"</p>";
        cap3 = document.getElementById("capsula3");
        cap3.src = url;
        nCap++;
    }
    else if (nCap > 3){
        alert("No se pueden agregar más capsulas por el momento");
    }
    let cap = document.getElementById("formaCapsula");
    cap.style.visibility = "hidden";
    e.preventDefault();
}

var capsula = document.getElementById("capsula");
capsula.addEventListener("submit", guardarCapsula, true);