# This imports all the layers for "sketch-import" into sketchImportLayers
sketchImportLayers = Framer.Importer.load "imported/sketch-import"


background = sketchImportLayers.background
cuboAcucar = sketchImportLayers.cuboAcucar
botaoAdd = sketchImportLayers.botaoAdd
oQueVoce = sketchImportLayers.oQueVoce
navBar = sketchImportLayers.navBar
voltar = sketchImportLayers.voltar
sucoSelected = sketchImportLayers.sucoSelected
maca = sketchImportLayers.maca
tea = sketchImportLayers.tea
cafe = sketchImportLayers.cafe
banana = sketchImportLayers.banana
pao = sketchImportLayers.pao
okAdd = sketchImportLayers.okAdd

oQueVoce.visible = false
navBar.visible = false
sucoSelected.visible = false
maca.visible = false
tea.visible = false
cafe.visible = false
banana.visible = false
pao.visible = false



changeScene = (scene) ->
	switch scene
		when 1 
			botaoAdd.bringToFront()

botaoAdd.on Events.Click, ->
	changeScene(1)
	telaComparar.scale = 3


