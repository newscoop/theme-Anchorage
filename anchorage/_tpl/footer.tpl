        <!-- Begins Footer -->
        <footer id="footer">
            <div class="row">
                <div class="span12 footer-area">
                    <div class="row footer-widgets">
                        <div class="span3 block">
                            {{ local }}
                            {{ set_current_issue }}
                            {{ list_sections }}
                            <a  href="{{ uri options="section" }}">{{ $gimme->section->name}}</a>
                            {{ /list_sections }}
                            {{ /local }}
                        </div>
                        <div class="span3 block">
                            {{ list_articles ignore_issue="true" ignore_section="true" constraints="type is page" }}
                            <a href="{{ url options="article" }}">{{ $gimme->article->name }}</a>
                            {{ /list_articles }}
                            <a href="/?tpl=6">{{ #archive# }}</a>
                        </div>                         
                        <div class="span3 block">
                            <a target="_blank" href="http://twitter.com/sourcefabric ">{{ #followUs# }}</a>
                            <a target="_blank"href="http://facebook.com/sourcefabric ">{{ #beOurFan# }}</a>
                            <a href="/en/static/rss">{{ #subscribeToOurFeed# }}</a>
                        </div>
                    </div>
                </div>
                <div class="span12 bottom-footer">
                    <div class="row">
                        <div class="span4 offset4 bottom-footer">
                            <div class="social-links">
                                <div class="btn-group">
                                  <a href="/en/static/rss" class="btn rss-icon"><i class="icon-rss-sign"></i></a>
                                  <a href="http://facebook.com/sourcefabric" class="btn fb-icon"><i class="icon-facebook-sign"></i></a>
                                  <a href="http://twitter.com/sourcefabric" class="btn tw-icon"><i class="icon-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- / End Footer -->
