const btnAdd = document.getElementById("add")
const btnRemove = document.getElementById("remove")
const bodyBlog = document.getElementById("bodyBlog")
const view = document.getElementById("view")
let flaga = true;

const clear = function (){
    header.value =""
    textArea.value = ""
}




btnAdd.addEventListener("click", () => {
    tab.forEach(element =>{
        if(element == header.value ){
            flaga = !flaga
        }
        else{
        }
    })

if(flaga){
    let option = document.createElement("option")
    const div = document.createElement("div")
//     let addPost = `
// <header><h1>${header.value}</h1></header>
// <article class="text-justify">
// ${textArea.value}
// </article>
// `
    // bodyBlog.appendChild(div).innerHTML = addPost
    tab.push(header.value)
    text.push(textArea.value)

    posty.appendChild(option).value = header.value
    option.textContent = header.value
    option.id = header.value
}
else{
    alert("Post o tym tytule został już oddany")
    flaga = !flaga
}
})

btnRemove.addEventListener("click", ()=>{
    tab.forEach(element =>{
        if(element == header.value ){
            text.splice(posty.selectedIndex,1)
           tab.splice(posty.selectedIndex, 1)
           document.getElementById(`${element}`).remove()
           clear()

        }
        else{
        }
    })
})

view.addEventListener("click", podglad)