extends Node3D

# List of API servers to connect to
@export var api_servers: Array[String]
# Reference to the VideoStreamPlayer node for playing content
@export var video_stream_player: VideoStreamPlayer = null
# The default content key to load on start
@export var default_ld_content: String = "germany"
# Parent node containing the individual display panels
@export var displays: Node3D = null
# Flag to indicate if this is running for GitHub Pages (might affect paths or behavior)
@export var for_github_page: bool = false

# HTTP headers for API requests
const HEADERS = [
	"Content-Type: application/json"
]

# List of content metadata. Each entry contains [ID, Title]
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
	# Start playing the default video content
	_play_video(default_ld_content)

	var i = 0
		
	# Set contents to the displays
	for display in displays.get_children():
		# Configure the display with the corresponding ID and Title
		display.setContent(CONTENTS[i][0], CONTENTS[i][1])
		i += 1

# Stores the key of the currently playing content to avoid reloading
var current_ld_content = null

# Loads and plays the video associated with the given content key
func _play_video(ld_content):
		
	# Only change video if the content is different
	if current_ld_content != ld_content:
		# Stop existing playback if any
		if video_stream_player.is_playing():
			video_stream_player.stop()
		
		# Create a new Theora video stream and set the file path
		var video_stream = VideoStreamTheora.new()	
		video_stream.file = "res://LD_Contents/{ld_content}.ogv".format({"ld_content": ld_content})

		# Assign the stream to the VideoStreamPlayer and play
		video_stream_player.stream = video_stream
		video_stream_player.play()
		print("Playing video.")
		
		# Update the current content tracker
		current_ld_content = ld_content
		
