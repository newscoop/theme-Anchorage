                                {{assign var="counter" value=0 }}
                                {{ list_sections length="6"  }}
                                {{ assign var="counter" value=$counter+1 }}
                                <aside class="extra-articles {{if $counter is odd}}left-block{{else}}right-block{{/if}}">
                                    <h4 class="section-title"><a href="{{ uri options="section" }}"><b>{{ $gimme->section->name }}</b></a></h4>
                                    {{ list_articles length="3" ignore_issue="true" order="bypublishdate desc" }}
                                    <div class="link">
                                        <i class="icon-double-angle-right"></i>
                                        <a class="dateline" href="{{ uri options='section' }}">{{ $gimme->article->section->name}}: </a>
                                        <a href="{{ uri options="article" }}"> {{ $gimme->article->name }}</a>
                                    </div>
                                    {{ /list_articles }}
                                    <a href="{{ uri options="section" }}" class="solid-button pull-right">More</a>        
                                </aside>
                                {{ /list_sections }}
                                <div class="clearfix"></div>