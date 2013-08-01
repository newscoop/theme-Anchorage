                            <div id="sidebar">

                                <section id="graph" class="block visible-desktop">
                                    <h4>{{ #financialGraph# }}</h4>
                                    <script src="//www.gmodules.com/ig/ifr?url=http://hosting.gmodules.com/ig/gadgets/file/100840413740199312943/StockQuotes.xml&amp;up_stockList=%5EIXIC%2C%5EGSPC%2C%5EN225%2C%5EHSI%2C%5ESTI%2C%5EFTSE%2C%5EGDAXI%2C%5EFCHI&amp;up_chart_bool=1&amp;up_font_size=11&amp;up_symbol_bool=0&amp;up_chart_period=1&amp;synd=open&amp;w=260&amp;h=300&amp;title=&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js"></script>
                                </section>

                                {{ if !$gimme->user->logged_in}}
                                <section id="login-form" class="block">
                                    <h4>{{ #premiumLogin# }}</h4>
                                    <form class="form-horizontal" action="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}" method="post">
                                      <div class="control-group">
                                        <label class="control-label" for="inputEmail">{{ #email# }}:</label>
                                        <div class="controls">
                                          <input type="text" class="input-medium" id="inputEmail" name="email">
                                        </div>
                                      </div>
                                      <div class="control-group">
                                        <label class="control-label" for="inputPassword">{{ #password# }}:</label>
                                        <div class="controls">
                                          <input type="password" class="input-medium" id="inputPassword" name="password">
                                        </div>
                                      </div>
                                      <div class="control-group">
                                        <div class="controls">
                                          <button type="submit" class="btn form-button"><i class="icon-chevron-right"></i> LOGIN</button>
                                        </div>
                                      </div>
                                      <div class="control-group">
                                        <div class="controls">
                                            <a href="{{ $view->url(['controller' => 'auth', 'action' => 'password-restore']) }}">{{ #recoverYourPassword# }}</a>
                                        </div>
                                      </div>
                                    </form>
                                </section>

                                <section id="premium-block" class="block">
                                    <h4>{{ #notAPremiumMember# }}</h4>
                                </section>

                                <section id="premium-block-description" class="block">
                                    <p><strong>{{ #advantages# }}:</strong> To be able to access all articles, you have to a premium member. To find out more about premium membership, please click here.</p>
                                    <a href="{{ $view->url(['controller' => 'register', 'action' => 'index']) }}" class="solid-button">{{ #registerNow# }}</a>
                                </section>

                                {{else}}

                                <section id="user-block" class="block">
  
                                    <figure class="user-image">
                                        <img src="{{ include file="_tpl/user-image.tpl" user=$user width=140 height=210 }}" style="max-width: 100%" rel="resizable" />
                                    </figure>
                                    {{$gimme->user->name}}
                                    <br>
                                    <a href="/dashboard" class="btn form-button"><i class="icon-user"></i>{{ #profile# }}</a>
                                    <a href="{{ $view->url(['controller' => 'auth', 'action' =>'logout'], 'default') }}" class="btn form-button"><i class="icon-chevron-right"></i>{{ #logout# }}</a>
                                 
                                </section>
                                {{ if !$gimme->user->subscription->is_valid && !$gimme->user->is_admin }}
                                <section id="premium-block" class="block">
                                    <h4>{{ #notAPremiumMember# }}</h4>
                                </section>

                                <section id="premium-block-description" class="block">
                                    <p><strong>{{ #advantages# }}:</strong> To be able to access all articles, you have to a premium member. To find out more about premium membership, please click here.</p>
                                    <a href="{{ $view->url(['controller' => 'register', 'action' => 'index']) }}" class="solid-button">{{ #registerNow# }}</a>
                                </section>
                                {{/if}}


                                {{/if}}

                                <section id="extra" class="block">

                                    <img class="ad" src="{{ url static_file="_img/sourcefabric-ad.png" }}">

                                    <a class="twitter-timeline" href="https://twitter.com/Sourcefabric" data-widget-id="352807262873587712">Tweets by @Sourcefabric</a> 
                                    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script> 

                                    <div id="weather"></div>

                                </section>

                                <div class="clearfix"></div>
                            </div>
