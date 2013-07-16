{{ image rendition="frontarticle" }}
    <figure class="featured-thumb">
        <a href="{{ uri options='article'}}">
                <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer}}: {{ $image->caption }}" />
        </a>
        <figcaption>{{ $image->caption }}</figcaption>
        <div class="landing-title"><a href="{{ uri options='section' }}"><b>{{ $gimme->article->section->name}}</b></a></div>
    </figure>
{{ /image }}
