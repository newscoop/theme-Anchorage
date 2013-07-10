{{* assign counter and maximum count for collecting multimedia files *}}
{{assign var=multimediacounter value=0}}
{{assign var=multimediacountermax value=3}}
{{ list_articles length="100" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
  {{* check if we have to do anything => not yet hit maximum *}}
  {{if $multimediacounter lt $multimediacountermax}}
      {{* assign variable for current article. 1 => has multimedia *}}
      {{assign var=multimediacurrent value=0}}
      {{ if $gimme->article->has_attachments }} 
          {{ list_article_attachments }}
              {{ if $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             
                {{assign var=multimediacurrent value=1}}
                {{assign var=multimediatype value='video'}}
              {{ /if }}  
          {{ /list_article_attachments }}   
      {{ /if }}  
      {{* check now if multimedia found *}}
      {{if $multimediacurrent == 1}}
        {{* add to array with multimedia articles *}}
        {{append var=multimedia value="`$multimediatype`" index="`$gimme->article->number`"}}
        {{* increase counter to check for max number *}}
        {{ assign "multimediacounter" $multimediacounter+1 }}
      {{/if}}
  {{/if}}
{{ /list_articles }} 

                              	<!-- Begins Index Videos -->
                                <section id="videos">

                                    <h4 class="section-title">{{ #latestVideos# }}</h4>

                                     {{ foreach from=$multimedia key=articleID item=multimediaType name=multimediaLoop }}
                                         {{ list_articles ignore_issue="true" ignore_section="true" length="1" constraints="number is `$articleID`"}}
                                            <div class="video">
                                                <figure class="video-thumb">
                                                    <a href="{{ url options='article' }}">
                                                        {{ include file="_tpl/img_185x100.tpl" }}
                                                    </a>
                                                    <figcaption class="video-caption">{{ #watchVideo# }}</figcaption>
                                                </figure>
                                                <a href="{{ url options="article" }}" class="title">{{ $gimme->article->name }}</a>
                                                <div class="description">
                                                     {{ $gimme->article->full_text|truncate:75:"...":true }}
                                                </div>
                                                <a href="{{ url options="article" }}" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i>{{ #readMore# }}</a>
                                            </div>
                                         {{ /list_articles }}
                                         {{ if $smarty.foreach.multimediaLoop.last}}
                                         <div class="clearfix"></div>
                                         {{ /if }}
                                    {{ /foreach }}

                                </section>
                                <!-- / End Index Videos -->
