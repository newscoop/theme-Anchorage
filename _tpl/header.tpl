        {{ assign var="currentsection" value=$gimme->section->number }}
        <!-- Begins Header -->
        <header id="header" role="banner">

                <div class="row">

                    <div class="span12 header-top">
                        <div class="row">
                            <div class="span6">
                                <div class="top-block-left login-user-action">
                                    {{ if $gimme->user->logged_in }}
                                        {{ #hi# }} <b>{{$gimme->user->name}}</b>
                                        <a href="/dashboard" class="solid-button"><i class="icon-user"></i>&nbsp;&nbsp;<span>{{ #profile# }}</span></a>
                                        <a href="{{ $view->url(['controller' => 'auth', 'action' =>'logout'], 'default') }}" class="solid-button"><i class="icon-chevron-right"></i>&nbsp;&nbsp;<span>{{ #logout# }}</span></a>
                                    {{/if}}
                                </div>
                            </div>
                            <div class="span6 hidden-phone">
                                <div class="top-block-right">
                                    {{ search_form template="search.tpl" submit_button="&nbsp;" html_code="class=\"form-search\" " button_html_code="style=\"display: none;\""}} 
                                        {{ camp_edit object="search" attribute="keywords"  html_code="placeholder=\"{{ #search# }}\" class=\"search-query\" " }}
                                    {{ /search_form }}    
                                </div>  
                            </div>
                         </div>
                    </div>

                    <div class="span12 banner">
                       <hgroup id="main-logo">
                            <h1 id="logo">                  
                                <a href="/">
                                    <img  class="pull-left" src="{{ url static_file="_img/logo.png"}} " alt="">
                                </a>
                            </h1>
                        </hgroup>
                        <div id="action-header" class="action-header pull-right">
                        <div class="lang">
                        <span>{{ #language# }}:<a href="#">EN</a>|<a href="#">DE</a></span>
                        </div>
                            <div class="btn-group user-buttons">
                              <a href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}" class="btn"><i class="icon-user"></i>&nbsp; Login</a>
                              <a href="/user" class="btn"><i class="icon-group"></i>&nbsp; Community</a>
                              <a href="/en/static/rss" class="btn rss-icon"><i class="icon-rss-sign"></i></a>
                              <a href="http://facebook.com/sourcefabric" class="btn fb-icon"><i class="icon-facebook-sign"></i></a>
                              <a href="http://twitter.com/sourcefabric" class="btn tw-icon"><i class="icon-twitter"></i></a>
                            </div>
                        </div> 
                    </div>

                    <div class="span12">

                        <!-- Desktop and tablet menu -->
                        <nav id="main-menu" class="hidden-phone">
                            {{ local }}
                            {{ set_current_issue }}
                            {{ list_sections }}
                            <a href="{{ uri options='section' }}" 
                                {{if $currentsection == $gimme->section->number }}class="active"{{ /if}} >{{ $gimme->section->name}}
                            </a>
                            {{ /list_sections }}
                            {{ /local }}
                        </nav>



                        <!-- Phone menu -->
                        <div id="phone-menu" class="navbar navbar-inverse visible-phone">
                            <div class="navbar-inner">
                                <div class="container-fluid">
                                    <div id="action-header-phone" class="action-header pull-right">
                                        <div class="btn-group user-buttons">
                                          <a href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}" class="btn"><i class="icon-user"></i>&nbsp; Login</a>
                                          <a href="/user" class="btn"><i class="icon-group"></i>&nbsp; Community</a>
                                          <a href="/en/static/rss" class="btn rss-icon"><i class="icon-rss-sign"></i></a>
                                          <a href="http://facebook.com/sourcefabric" class="btn fb-icon"><i class="icon-facebook-sign"></i></a>
                                          <a href="http://twitter.com/sourcefabric" class="btn tw-icon"><i class="icon-twitter"></i></a>
                                        </div>
                                    </div> 
                                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="brand" href="#" data-toggle="collapse" data-target=".nav-collapse">{{#menu#}}</a>
                                    <div class="nav-collapse collapse">
                                        <ul class="nav">
                                            {{ local }}
                                            {{ set_current_issue }}
                                            {{ list_sections }}
                                            <li {{if $currentsection == $gimme->section->number }}class="active"{{ /if}}>
                                                <a class="phone-link" href="{{ uri options='section' }}">{{ $gimme->section->name}}</a>
                                            </li>
                                            {{ /list_sections }}
                                            {{ /local }}
                                            <li class="divider"></li>
                                            <li><a class="phone-link"  href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}"><i class="icon-user"></i>&nbsp; Login</a></li>
                                            <li><a class="phone-link"  href="/user"><i class="icon-group"></i>&nbsp; Community</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

        </header>
        <!-- /End Header -->
