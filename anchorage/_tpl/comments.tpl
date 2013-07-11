<aside id="comments-block">
    {{ list_article_comments order="bydate desc" }}
    <div class="comment">
        <div class="comment-content">
            {{ $gimme->comment->content }}
        </div>
        <div class="comment-author">
            {{ if $gimme->comment->user->identifier }}
            <a href="http://{{ $gimme->publication->site }}/user/profile/{{ $gimme->comment->user->uname|urlencode }}" >{{ $gimme->comment->user->uname }}</a><br>
            {{ else }}
            <a href="#">{{ $gimme->comment->nickname }} ({{ #anonymous# }})</a><br>
            {{ /if }}
            <span><time class="timeago" datetime="{{ $gimme->comment->submit_date }}">{{ $gimme->comment->submit_date }}</time></span>
        </div>
        <div class="clearfix" ></div>
    </div>
    {{ /list_article_comments }}
    <h4>{{ #writeComment# }}</h4>

    {{ if !$gimme->user->logged_in}}
        <a href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}" class="link-color">{{ #loginOrSignUp# }}</a>
    {{/if}}

     {{ if !$gimme->publication->public_comments }}
            <!-- public comments are not allowed-->
            {{ if $gimme->user->logged_in }}
                <!-- user is logged in -->
                {{ if $gimme->article->number && $gimme->article->comments_locked == 0 && $gimme->article->comments_enabled == 1}}
                    {{ if $gimme->submit_comment_action->defined && $gimme->submit_comment_action->rejected }}
                    <p><em>{{ #yourCommentHasNotBeenAccepted# }}</em></p>
                    {{ /if }}

                    {{ if $gimme->submit_comment_action->is_error }}
                        <p><em>{{ $gimme->submit_comment_action->error_message }}</em></p>
                    {{ else }}
                        {{ if $gimme->submit_comment_action->defined }}
                            {{ if $gimme->publication->moderated_comments }}
                                <p><em>{{ #yourCommentHasBeenSentForApproval# }}</em></p>
                            {{ /if }}
                        {{ /if }}   
                    {{ /if }}
            {{ comment_form html_code="id=\"commentform\"" _button="submit" button_html_code="tabindex=\"6\" class=\"btn btn-large pull-right\" " }}
            <div class="row">                                                
                <div class="span4">
                    {{ camp_edit object="comment" attribute="content" html_code="id=\"comment\" tabindex=\"4\" placeholder=\"Write your message here\" " }}
                </div>
                <div class="span4">
                    {{ recaptcha }}
                </div>
            </div>
            {{ /comment_form }}
            {{ else }}
                <p>{{ #commentsLocked# }}</p>
            {{ /if }}
        {{ else }}
            <p>{{ #registrationNeeded# }}</p>
        {{ /if }}
    {{ else }}
        <!-- public comments are allowed-->
        {{ if $gimme->user->logged_in }}
            {{ if $gimme->article->number && $gimme->article->comments_locked == 0 && $gimme->article->comments_enabled == 1}}
            {{ if $gimme->submit_comment_action->defined && $gimme->submit_comment_action->rejected }}
                <p><em>{{ #yourCommentHasNotBeenAccepted# }}</em></p>
            {{ /if }}

            {{ if $gimme->submit_comment_action->is_error }}
                <p><em>{{ $gimme->submit_comment_action->error_message }}</em></p>
            {{ else }}
                {{ if $gimme->submit_comment_action->defined }}
                    {{ if $gimme->publication->moderated_comments }}
                        <p><em>{{ #yourCommentHasBeenSentForApproval# }}</em></p>
                    {{ /if }}
                {{ /if }}   
            {{ /if }}

            {{ comment_form html_code="id=\"commentform\"" _button="submit" button_html_code="tabindex=\"6\" class=\"btn btn-large pull-right\" " }}
            <div class="row">                                                
                <div class="span4 login-textarea">
                    {{ camp_edit object="comment" attribute="content" html_code="id=\"comment\" tabindex=\"4\" placeholder=\"Write your message here\" " }}
                </div>
                <div class="span4">
                    {{ recaptcha }}
                </div>
            </div>
            {{ /comment_form }}
            {{ else }}
                <p>{{ #commentsLocked# }}</p>
            {{ /if }}
        {{ else }}
            <!-- user is not logged in -->
            {{ if $gimme->article->number && $gimme->article->comments_locked == 0 && $gimme->article->comments_enabled == 1}}
                {{ if $gimme->submit_comment_action->defined && $gimme->submit_comment_action->rejected }}
                    <p><em>{{ #yourCommentHasNotBeenAccepted# }}</em></p>
                {{ /if }}

                {{ if $gimme->submit_comment_action->is_error }}
                    <p><em>{{ $gimme->submit_comment_action->error_message }}</em></p>
                {{ else }}
                    {{ if $gimme->submit_comment_action->defined }}
                        {{ if $gimme->publication->moderated_comments }}
                            <p><em>{{ #yourCommentHasBeenSentForApproval# }}</em></p>
                        {{ /if }}
                    {{ /if }}   
                {{ /if }}


            {{ comment_form html_code="id=\"commentform\"" _button="submit" button_html_code="tabindex=\"6\" class=\"btn btn-large pull-right\" " }}
            <div class="row">                                                
                <div class="span4">
                    {{ camp_edit object="comment" attribute="nickname" html_code="id=\"author\" tabindex=\"1\" placeholder=\"Your name\" " }}
                    {{ camp_edit object="comment" attribute="reader_email" html_code="id=\"email\" tabindex=\"2\" placeholder=\"Your Email\"" }}
                    {{ camp_edit object="comment" attribute="content" html_code="id=\"comment\" tabindex=\"4\" placeholder=\"Write your message here\" " }}
                </div>
                <div class="span4">
                    {{ recaptcha }}
                </div>
            </div>

        {{ /comment_form }}
            {{ else }}
            <p>{{ #commentsLocked# }}</p>
        {{ /if }}
    {{ /if }}
{{ /if }}

</aside>
