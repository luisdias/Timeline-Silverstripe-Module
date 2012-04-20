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