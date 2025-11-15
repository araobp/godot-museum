extends Node3D

@export var api_servers: Array[String]
@export var video_stream_player: VideoStreamPlayer = null
@export var default_ld_content: String = "germany"
@export var displays: Node3D = null
@export var for_github_page: bool = false

const HEADERS = [
	"Content-Type: application/json"
]

const CONTENTS = [
	["BrandenburgerGate", "Brandenburger Tor"],
	["CologneCathedral", "Kölner Dom"],
	["FrankfurtRoemer", "Frankfurter Römer"],
	["HeidelbergCastle", "Schloss Heidelberg"],
	["MunichNewTownHall", "Neues Rathaus (München)"],
	["Neuschwanstein", "Schloss Neuschwanstein"],
	["Rothenberg", "Rothenburg ob der Tauber"]	
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_play_video(default_ld_content)

	var i = 0
		
		# Set contents to the displays
	for display in displays.get_children():
		display.setContent(CONTENTS[i][0], CONTENTS[i][1])
		i += 1

		
var current_ld_content = null

func _play_video(ld_content):
		
	if current_ld_content != ld_content:
		if video_stream_player.is_playing():
			video_stream_player.stop()
		
		var video_stream = VideoStreamTheora.new()	
		video_stream.file = "res://LD_Contents/{ld_content}.ogv".format({"ld_content": ld_content})

		# Assign the stream to the VideoStreamPlayer and play
		video_stream_player.stream = video_stream
		video_stream_player.play()
		print("Playing video.")
		current_ld_content = ld_content
		
