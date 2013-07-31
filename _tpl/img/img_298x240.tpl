{{ image rendition="sidebarbig" }}
        <a href="{{ uri options='article'}}">
                <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer}}: {{ $image->caption }}" />
        </a>
{{ /image }}
