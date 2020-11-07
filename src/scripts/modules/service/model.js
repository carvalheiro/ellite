const list = document.getElementById('servicosMobile')
export const toogleServices = () => {
  console.log('douboa')
  const attrNode = list.getAttributeNode('data-open')
  if (attrNode) {
    list.removeAttributeNode(attrNode)
  } else {
    list.setAttribute('data-open', 'true')
  }
}
