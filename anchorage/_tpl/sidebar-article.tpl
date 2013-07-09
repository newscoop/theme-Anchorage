                            <div id="sidebar">

                                <section id="most-read" class="block">
                                    <h4>Most Read</h4>

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

                                <section id="premium-articles" class="block">
                                    <h4>Premium articles</h4>

                                    <div class="premium-articles">
                                      <div class="premium-articles-left">
                                        <a href="">
                                          <img src="http://lorempixel.com/64/64/">
                                        </a>
                                      </div>
                                      <div class="premium-articles-right">
                                        <a href="#" class="premium-title">Donec id elit non mi porta gravida at eget </a>
                                        <div class="premium-description">
                                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere consectetur est at lobortis.
                                        </div>
                                        <a href="#" class="btn btn-mini premium-button"><i class="icon-lock"></i> Read</a>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>

                                    <div class="premium-articles">
                                      <div class="premium-articles-left">
                                        <a href="">
                                          <img src="http://lorempixel.com/64/64/">
                                        </a>
                                      </div>
                                      <div class="premium-articles-right">
                                        <a href="#" class="premium-title">Donec id elit non mi porta gravida at eget metus porta gravida at eget metus.</a>
                                        <div class="premium-description">
                                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere consectetur est at lobortis.
                                        </div>
                                        <a href="#" class="btn btn-mini premium-button"><i class="icon-lock"></i> Read</a>
                                      </div>
                                      <div class="clearfix"></div>
                                    </div>

                                </section>

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

                                </section>

                                <div class="clearfix"></div>
                                
                            </div>
