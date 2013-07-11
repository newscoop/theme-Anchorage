{{ image rendition="multimedia" }}
    <img src="{{ url static_file="_img/player-icon.png" }}" style="background:url({{ $image->src }})" alt="{{ $image->photographer}}: {{ $image->caption }}">
{{ /image }}
