 {{ if $gimme->article->content_accessible }} 
<h1 class="page-title">{{ $gimme->article->name }}</h1>

{{ if $gimme->article->type_name == "news" }}
    <time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%MZ"}}">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}</time> 
    By {{ list_article_authors }} {{ if $gimme->author->user->defined}}<a href="{{ $view->url(['username' => $gimme->author->user->uname], 'user') }}" class="link-color">{{/if}}{{ $gimme->author->name }}{{if $gimme->author->user->defined }}</a>{{/if}} ({{ $gimme->author->type|lower }}) {{ if !$gimme->current_list->at_end }}, {{/if}}{{/list_article_authors}}
{{ if $gimme->article->has_map }}
<span class="pull-right visible-desktop">{{ #locations# }}: {{ list_article_locations }}{{ if $gimme->location->enabled }}{{ $gimme->location->name }}{{ if $gimme->current_list->at_end }}{{ else }}, {{ /if }}{{ /if }}{{ /list_article_locations }}</span> <span class="visible-phone">{{ #locations# }}: {{ list_article_locations }}{{ if $gimme->location->enabled }}{{ $gimme->location->name }}{{ if !$gimme->current_list->at_end }}, {{ /if }}{{ /if }}{{ /list_article_locations }}</span>
{{/if}}
 {{ list_article_topics }}{{ if $gimme->current_list->at_beginning }}<div>{{ #topics# }}: {{ /if }}<a class="link-color" href="{{ url options="template topic.tpl" }}">{{ $gimme->topic->name }}</a>{{ if $gimme->current_list->at_end }}</div>{{ else }}, {{ /if }}{{ /list_article_topics }}
{{ /if }}

{{ if $gimme->article->type_name == "news" }}
<figure class="image">
    {{ include file="_tpl/img/img_325x190.tpl" }}
    <figcaption>{{ $image->caption }}</figcaption>
</figure>
{{ /if }}

{{ include file="_tpl/_edit-article.tpl" }}{{ $gimme->article->full_text }}

{{ include "_tpl/comments.tpl" }}
{{ else }}
 <header>
    <div class="alert">{{ #infoOnLockedArticles# }}</div>
</header>
{{ /if }}

