                            <div id="sidebar">

                                <section id="community-feed" class="block">
                                  <h4>Community Feed</h4>

                                  {{ list_community_feeds length="10" }}
                                  {{ $created=$gimme->community_feed->created|date_format:"%Y-%m-%d" }}
                                  {{ $user=$gimme->community_feed->user }}
                                  <div class="activity">
                                    <div class="activity-action">
                                      {{ if $gimme->community_feed->type == 'user-register' && $user->uname }}
                                        <i class="icon-user"></i> {{#registered#}}:
                                      {{ elseif $gimme->community_feed->type == 'comment-recommended' && $gimme->community_feed->comment->article }}
                                        <i class="icon-comment"></i> {{#newCommentOn#}}
                                      {{/if}}
                                    </div>
                                    <div class="activity-title">
                                     {{ if $gimme->community_feed->type == 'user-register' && $user->uname }}
                                        <a{{ if $user->is_active }} href="{{ $view->url(['username' => $user->uname], 'user') }}"{{ /if }}>{{ $user->first_name }} {{ $user->last_name }}</a>
                                      {{ elseif $gimme->community_feed->type == 'comment-recommended' && $gimme->community_feed->comment->article }}
                                        <a href="{{ $gimme->community_feed->comment->article->url }}">{{ $gimme->community_feed->comment->article->title }}</a>
                                      {{/if}}
                                    </div>
                                    <div class="date">
                                      <time class="timeago" datetime="{{ $created}}">{{ $created}}</time>
                                    </div>
                                  </div>
                                  {{ /list_community_feeds }}


                                </section>

                                <section id="premium-block" class="block">
                                    <h4>Not a premium member?</h4>
                                </section>

                                <section id="premium-block-description" class="block">
                                    <p><strong>{{ #advantages# }}:</strong> To be able to access all articles, you have to a premium member. To find out more about premium membership, please click here.</p>
                                    <a href="{{ $view->url(['controller' => 'register', 'action' => 'index']) }}" class="solid-button">{{ #registerNow# }}</a>
                                </section>

                                <section id="extra" class="block">

                                    <img class="ad" src="{{ url static_file="_img/sourcefabric-ad.png"}} ">

                                </section>

                                <div class="clearfix"></div>
                            </div>
