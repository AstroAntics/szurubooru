<div id="home">
	<h1><%= title %></h1>
	<p>
		<small>Serving <%= globals.postCount || 0 %> posts (<%= formatFileSize(globals.postSize || 0) %>)</small>
	</p>

	<% if (post && typeof(post) !== 'undefined') { %>
		<div class="post">
			<%= postContentTemplate({post: post}) %>
			<div class="post-footer">

				<span class="left">
					<% var showLink = canViewPosts %>

					<% if (showLink) { %>
						<a href="#/post/<%= post.id %>">
					<% } %>

					<%= post.idMarkdown %>

					<% if (showLink) { %>
						</a>
					<% } %>

					uploaded
					<%= formatRelativeTime(post.uploadTime) %>
				</span>

				<span class="right">
					featured by

					<% var showLink = canViewUsers && post.user.name %>

					<% if (showLink) { %>
						<a href="#/user/<%= post.user.name %>">
					<% } %>

					<img width="25" height="25" class="author-avatar"
						src="/data/thumbnails/25x25/avatars/<%= post.user.name || '!' %>"
						alt="<%= post.user.name || 'Anonymous user' %>"/>

					<%= post.user.name || 'Anonymous user' %>

					<% if (showLink) { %>
						</a>
					<% } %>
				</span>

			</div>
		</div>
	<% } %>

	<p>
		<small class="version">Version: <a href="//github.com/rr-/szuru2/commits/master"><%= version %></a> (built <%= formatRelativeTime(buildTime) %>)</small>
	</p>
</div>
