#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@page import='java.util.Calendar' %>
<%@taglib prefix='tag' uri='http://www.adehermawan.com/dateFormatter' %>
<header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
        <!-- Title -->
        <span class="mdl-layout-title">Lesson 3 Practice Hands-On (SOA testing)</span>
        <!-- Add spacer, to align navigation to the right -->
        <div class="mdl-layout-spacer"></div>
        <!-- Navigation. We hide it in small screens. -->
        <tag:formatDate date="<%= Calendar.getInstance().getTime() %>" format="dd-MM-YYYY hh:mm"></tag:formatDate>
        <nav class="mdl-navigation mdl-layout--large-creen-only">
            <a class="mdl-navigation__link" href="/${artifactId}/new">Add Post</a>
            <a class="mdl-navigation__link" href="/${artifactId}/list">List Posts</a>
        </nav>
    </div>
</header>
<div class="mdl-layout__drawer">
    <span class="mdl-layout-title">Lesson 3 Practice Hands-On (SOA testing)</span>
    <nav class="mdl-navigation">
        <a class="mdl-navigation__link" href="/${artifactId}/new">Add Post</a>
        <a class="mdl-navigation__link" href="/${artifactId}/list">List Posts</a>
    </nav>
</div>