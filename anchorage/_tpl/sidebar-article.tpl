                            <div id="sidebar">

                                <section id="most-read" class="block">
                                    <h4>{{ #mostRead# }}</h4>

                                    {{ local }} 
                                    {{ set_current_issue }} 
                                    {{ list_articles length="3" order="bypopularity desc" constraints="type is news" }}
                                    <div class="most-read-articles">
                                      <a href="{{ uri options="article" }}" class="most-read-title">{{ $gimme->article->name }}</a>
                                      <div class="most-read-description">
                                        {{ $gimme->article->full_text|truncate:140:"...":true }}
                                      </div>
                                    </div>
                                    {{ /list_articles }} 
                                    {{ /local }}

                                </section>

                                {{ local }} 
                                {{ set_current_issue }} 
                                {{ list_articles length="2" order="bypopularity desc"  ignore_section="true" constraints="public is off" }}
                                {{ if $gimme->current_list->at_beginning }}
                                <section id="premium-articles" class="block">

                                    <h4>{{ #premiumArticles# }}</h4>
                                {{ /if }}
                                    <div class="premium-articles">
                                      <div class="premium-articles-left">
                                        <a href="{{ uri options="article" }}">
                                          {{ include file="_tpl/img/img_64x64.tpl" }}
                                        </a>
                                      </div>
                                      <div class="premium-articles-right">
                                          <a href="{{ uri options="article" }}" class="premium-title">{{ $gimme->article->name }}</a>
                                        <div class="premium-description">
                                            {{ $gimme->article->full_text|truncate:140:"...":true }}
                                        </div>
                                        <a href="{{ uri options="article" }}" class="btn btn-mini premium-button"><i class="icon-lock"></i>{{ #readMore# }}</a>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>

                                {{ if $gimme->current_list->at_end}}
                                </section>
                                {{ /if }}
                                {{ /list_articles }}
                                {{ /local }}

                                <section id="articles-slider" class="carousel slide">
      
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                      {{ list_playlist_articles name="Front page" length="3" }}
                                      {{ if $gimme->current_list->at_beginning }}
                                      <div class="active item">
                                        {{ include file='_tpl/img/img_298x240.tpl'}}
                                        <a href="{{ uri option='article'}}" class="caption">{{ $gimme->article->name|truncate:50 }}</a>
                                      </div>
                                      {{else}}
                                      <div class="item">
                                        {{ include file='_tpl/img/img_298x240.tpl'}}
                                        <a href="{{ uri option='article'}}" class="caption">{{ $gimme->article->name|truncate:50 }}</a>
                                      </div>
                                      {{/if}}
                                      {{ /list_playlist_articles }}
                                    </div>

                                    <ol class="carousel-indicators">
                                      <li data-target="#articles-slider" data-slide-to="0" class="active"></li>
                                      <li data-target="#articles-slider" data-slide-to="1"></li>
                                      <li data-target="#articles-slider" data-slide-to="2"></li>
                                    </ol>
                                  
                                </section>

                                <section id="extra" class="block">

                                  <img class="ad" src="{{ url static_file="_img/sourcefabric-ad.png" }}">

                                  <div id="poll">
                                    {{ include file="_tpl/sidebar-poll.tpl" }}
                                  </div>

                                </section>

                                <div class="clearfix"></div>
                                
                            </div>
