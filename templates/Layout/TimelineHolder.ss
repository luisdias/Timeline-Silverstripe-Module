<!--
MIT license

Copyright (c) 2012 Luis E. S. Dias - smartbyte.systems@gmail.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->
<!DOCTYPE html>
<html lang="en">
	<head>
            <% base_tag %>
            <meta charset="utf-8" />
            <title>$Title</title>

            <!-- CSS -->
            <style>
                    html, body {
                            height:100%;
                            padding: 0px;
                            margin: 0px;
                    }
            </style>
            <!-- JavaScript -->
            <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>            
            <script type="text/javascript" src="{$BaseHref}timeline/javascript/timeline.js"></script>
            <script type="text/javascript">
                    $(document).ready(function() {
                            var timeline = new VMM.Timeline();
                            timeline.init();
                            if ($.browser.msie) {
                                $("img").each(function(){
                                    src = $(this).attr('src');
                                    basehref = '{$BaseHref}';
                                    $(this).attr('src',basehref+src);
                                });
                            }
                            
                    });
            </script>
            <!-- place here the link to the language file
            <script type="text/javascript" src="{$BaseHref}timeline/javascript/timeline-por.js"></script>
            -->
	</head>
	<body>
            <div id="timeline">
                <% control Children %>
                    <% if First %>
                        <section>
                                <time>$BeginDate.Year,$BeginDate.Format(m),$BeginDate.DayOfMonth</time>
                                <% if EndDate %>
                                    <time>$EndDate.Year,$EndDate.Format(m),$EndDate.DayOfMonth</time>
                                <% end_if %>
                                <h2>$Title</h2>
                                <article>
                                    $Article
                                </article>
                                <figure>
                                    $Content
                                    <% if MediaCredit %>
                                        <cite>$MediaCredit</cite>
                                    <% end_if %>
                                    <% if MediaCaption %>
                                        <figcaption>$MediaCaption</figcaption>
                                    <% end_if %>
                                </figure>
                        </section>
                        <ul>
                    <% else %>
                        <li>
                                <time>$BeginDate.Year,$BeginDate.Format(m),$BeginDate.DayOfMonth</time>
                                <% if EndDate %>
                                    <time>$EndDate.Year,$EndDate.Format(m),$EndDate.DayOfMonth</time>
                                <% end_if %>
                                <h3>$Title</h3>
                                <article>
                                    $Article
                                </article>
                                <figure>
                                    $Content
                                    <% if MediaCredit %>
                                        <cite>$MediaCredit</cite>
                                    <% end_if %>
                                    <% if MediaCaption %>
                                        <figcaption>$MediaCaption</figcaption>
                                    <% end_if %>
                                </figure>
                        </li>                    
                    <% end_if %>
                <% end_control %>
                </ul>
            </div>
	</body>
</html>