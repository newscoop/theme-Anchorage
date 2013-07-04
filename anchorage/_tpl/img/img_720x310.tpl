{{ image rendition="frontarticle" }}
    <figure class="featured-thumb">
        <a href="{{ uri options='article'}}">
                <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer}}: {{ $image->caption }}" />
        </a>
        <figcaption>{{ $image->caption }}</figcaption>
        <div class="landing-title"><b>{{ $gimme->article->section->name}}:</b> Dateline pending</div>
    </figure>
{{ /image }}
