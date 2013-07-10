                            <div id="sidebar">

                                <section id="community-feed" class="block">
                                  <h4>Community Feed</h4>

                                  {{ local }}
                                  {{ set_current_issue }}
                                  {{ list_articles length="10" order="byLastComment desc" constraints="type is news" }}
                                  {{ list_article_comments length="1" order="bydate desc"}}
                                  <div class="activity">
                                    <div class="activity-action">
                                      <i class="icon-comment"></i> {{ #newCommentOn# }}
                                    </div>
                                    <div class="activity-title">
                                      <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
                                    </div>
                                    <div class="date">
                                      <time class="timeago" datetime="{{ $gimme->comment->submit_date }}">{{ $gimme->comment->submit_date}}</time>
                                    </div>
                                  </div>
                                  {{ /list_article_comments }}
                                  {{ /list_articles }}
                                  {{ /local }}

                                </section>

                                <section id="premium-block" class="block">
                                    <h4>Not a premium member?</h4>
                                </section>

                                <section id="premium-block-description" class="block">
                                    <p><strong>Advantages:</strong> Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor.</p>
                                    <a href="#" class="solid-button">Register Now</a>
                                </section>

                                <section id="extra" class="block">

                                    <img class="ad" src="{{ url static_file="_img/sourcefabric-ad.png"}} ">

                                </section>

                                <div class="clearfix"></div>
                            </div>
