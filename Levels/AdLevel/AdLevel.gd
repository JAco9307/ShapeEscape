extends Node2D

var adTime = 103
var progressValue = 0

func _process(delta: float) -> void:
	if adTime <= 50:
		%SkipButton.visible = true
	
	%Timer.text = str(floori(adTime))
	var change = delta
	
	if adTime <= 20:
		change += delta * 0.3
	if adTime <= 5:
		change += delta * 0.1
	if adTime <= 0:
		change -= delta * 0.6
	
	adTime -= change
	if adTime <= -7:
		win()
	
	progressValue += change
	if progressValue <= 75:
		progressValue += change
		progressValue += change
		progressValue += change
		progressValue += change
	if progressValue <= 150:
		progressValue += change
		progressValue += change
	if progressValue <= 200:
		progressValue += change
		progressValue += change
	if progressValue <= 250:
		progressValue += change
		progressValue += change
	if progressValue <= 275:
		progressValue += change
		progressValue += change
	if progressValue > 295:
		progressValue -= change * 0.75
	
	%ProgressBar.value = progressValue

func win():
	LevelManager.win()

func _on_skip_button_pressed() -> void:
	pass # Replace with function body.
