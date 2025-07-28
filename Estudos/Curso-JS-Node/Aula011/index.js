function calcular() {
  var txtv = document.querySelector('input#txtvel')
  var res = document.querySelector('div#res')
  var vel = Number(txtv.value)
  res.innerText = `Sua velocidade atual é de ${vel}. `

  if (vel >= 60) {
    res.innerText += " Você está MULTADO por excesso de velocidade! " 
  }

  res.innerText += ` Dirija sempre com cinto de segurança!`
}
