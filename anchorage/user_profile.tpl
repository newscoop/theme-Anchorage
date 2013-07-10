{{ config_load file="{{ $gimme->language->english_name }}.conf" }}
{{ include file="_tpl/_html-head.tpl" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include "_tpl/header.tpl" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content" class="single-page profile-page">

                                <div class="profile-avatar">
                                    <img src="{{ include file='_tpl/user-image.tpl' user=$user width=150 height=130 }}" alt="{{#profilePicture#}} ">
                                    <h1 class="page-title">{{ if $profile['first_name_public'] }}{{ $user->first_name }}{{ /if }} {{ if $profile['last_name_public'] }} {{ $user->last_name }}{{ /if }} {{ if !$profile['first_name_public'] && !$profile['last_name_public'] }}{{$user->uname}}{{ /if }}</h1>
                                </div>

                                <div class="profile-bio">
                                    <h4>{{#aboutAuthor#}}</h4>
                                    <p>{{ $profile['bio']}}</p>
                                </div>

                                <div class="profile-information">
                                    <h4>{{#information#}}</h4>
                                    <div class="information-column">
                                        <div class="info-value">
                                            <span class="label">{{#gender#}}</span><br>
                                            <span class="value">{{ $profile['gender'] }}</span>
                                        </div>
                                        <div class="info-value">
                                            <span class="label">{{ #organization# }}</span><br>
                                            <span class="value">{{ $profile['organisation']}}</span>
                                        </div>
                                        <div class="info-value">
                                            <span class="label">{{ #website# }}</span><br>
                                            <span class="value"><a class="link-color" href="{{ $profile['website']}}" target="_blank" rel="nofollow">{{ $profile['website']|escape}}</a></span>
                                        </div>
                                        {{ if $profile['facebook'] }}
                                        <div class="info-value">
                                            <span class="label">Facebook</span><br>
                                            <span class="value"><a class="link-color" href="http://facebook.com/{{ $profile['facebook'] }}" rel="nofollow" target="_blank">{{ $profile['facebook'] }}</a></span>
                                        </div>
                                        {{ /if }}
                                        {{ if $profile['twitter'] }}
                                        <div class="info-value">
                                            <span class="label">Twitter</span><br>
                                            <span class="value"><a class="link-color" href="http://twitter.com/{{ $profile['twitter'] }}" rel="nofollow" target="_blank">{{ $profile['twitter'] }}</a></span>
                                        </div>
                                        {{ /if }}
                                    </div>
                                    <div class="information-column">
                                        <div class="info-value">
                                            <span class="label">{{ #birthday# }}</span><br>
                                            <span class="value">{{ $profile['birth_date'] }}</span>
                                        </div>
                                        <div class="info-value">
                                            <span class="label">{{ #member# }}</span><br>
                                            <span class="value"><time class="timeago" datetime="{{ $user->created|date_format:'%Y-%m-%d' }} 06:00:00">{{ $user->created|date_format:'%Y-%m-%d' }} 06:00:00</time></span>
                                        </div>
                                        <div class="info-value">
                                            <span class="label">{{ #posts# }}</span><br>
                                            <span class="value">{{ $user->posts_count }}</span>
                                        </div>
                                        {{ if $profile['google'] }}
                                        <div class="info-value">
                                            <span class="label">Google+</span><br>
                                            <span class="value"><a class="link-color" href="http://plus.google.com/{{ $profile['google'] }}" rel="nofollow" target="_blank">{{ $profile['google'] }}</a></span>
                                        </div>
                                        {{ /if }}
                                    </div>
                                </div>

                                {{ if $user->isAuthor() }}
                                {{ include file="_tpl/user-articles.tpl" }}
                                {{ else }}
                                {{ include file="_tpl/user-comments.tpl" }}          
                                {{ /if }}
                              
                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include file="_tpl/sidebar-community.tpl" }}
                            
                        </aside>
                        <!-- / End Sidebar -->
 
                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include file="_tpl/footer.tpl" }}

{{ include file="_tpl/_html-footer.tpl" }}
