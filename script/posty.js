  const submit2 = document.querySelector("input[name='id']")
const posty = document.getElementById("posty")
const textArea =  document.querySelector("textarea")
const header = document.getElementById("heder")
let tab = ["Nowy Post","Mama", "Tata", "Babcia"]
let text = ["","MAAAAAAAAAAAAAAWWDAWDAWDAWDAWDAWDAWDAWDAWDAWD", "teatfasmfawifdawfibawugawoefjeownfguwaegiwaegioaewf", "agawfgjaswgnab fdnb9apgherwubhnajfoqwijfewnh"]
let ID2 = [0, 1, 2, 3, 4];
tab.forEach(element =>{
  let option = document.createElement("option")
    posty.appendChild(option).value = element
    option.textContent = element
    option.id = element
})
const podglad = function (){
  let addPost = `
<header><h1>${header.value}</h1></header>
<article class="text-justify">
${textArea.value}
</article>
`
bodyBlog.innerHTML = addPost
}

const funkcjaaa = function addText(){
  let i = posty.selectedIndex;


  submit2.id = ID[i]

}

posty.addEventListener("change" ,funkcjaaa)




//  Trzeba pobrać text oraz tytuły. 