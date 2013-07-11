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
    <h4>Comment</h4>

    <form id="comment-form" class="form-horizontal">
        <div class="form-column-left">
            <div class="control-group">
                <label class="control-label" for="inputName">Name</label>
                <div class="controls">
                    <input type="text" id="inputName">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputEmail">Email</label>
                <div class="controls">
                    <input type="text" id="inputEmail">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="">Comment</label>
                <div class="controls">
                    <textarea rows="3"></textarea>
                </div>
            </div>
        </div>
        <div class="form-column-right">
          <button id="comment-button" class="solid-button" type="submit" class="btn pull-right">Comment</button>
        </div>
        <div class="clearfix"></div>

    </form>

</aside>
