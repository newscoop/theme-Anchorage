        <!-- Begins Header -->
        <header id="header" role="banner">

                <div class="row ">

                    <div class="span12 header-top">
                        <div class="row">
                            <div class="span6">
                                <div class="top-block-left"></div>
                            </div>
                            <div class="span6">
                                <div class="top-block-right">
                                    <form class="form-search">
                                      <input type="text" class="input-medium search-query" placeholder="Search">
                                    </form>
                                </div>  
                            </div>
                         </div>
                    </div>

                    <div class="span12 banner">
                       <hgroup>
                            <h1 id="logo">                  
                                <a href="/">
                                    <img  class="pull-left" src="{{ url static_file="_img/logo.png"}} " alt="">
                                </a>
                            </h1>
                        </hgroup>
                        <div class="date-header pull-right">
                            <div class="btn-group user-buttons">
                              <a href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}" class="btn"><i class="icon-user"></i>&nbsp; Login</a>
                              <a href="/user" class="btn"><i class="icon-group"></i>&nbsp; Community</a>
                              <a href="/en/static/rss" class="btn rss-icon"><i class="icon-rss-sign"></i></a>
                              <a href="http://facebook.com/sourcefabric" class="btn fb-icon"><i class="icon-facebook-sign"></i></a>
                              <a href="http://twitter.com/sourcefabric" class="btn tw-icon"><i class="icon-twitter"></i></a>asdfds
                            </div>
                        </div> 
                    </div>

                    <div class="span12">
                        <nav id="main-menu">
                            {{ local }}
                            {{ set_current_issue }}
                            {{ list_sections }}
                            <a  href="{{ uri options="section" }}">{{ $gimme->section->name}}</a>
                            {{ /list_sections }}
                            {{ /local }}
                        </nav>
                    </div>

                </div>

        </header>
        <!-- /End Header -->
