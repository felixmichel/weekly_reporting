<dashboard-meta>

    <p class="metainfo">
        <span class="kennzahl">
        { String(opts.data.multisession).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
        </span>

        <span class="infotext">Nutzer mit mehr als fünf Besuchen</span>
    </p>

    <p class="metainfo"><span class="kennzahl">{ String(opts.data.nutzer).replace(/(.)(?=(\d{3})+$)/g,"$1'") }</span>
        <span class="infotext">Nutzer insgesamt</span>
    </p>

    <p class="metainfo"><span class="kennzahl">{ opts.data.published_articles }</span>
        <span class="infotext">publizierte Artikel</span>
    </p>

    <p class="metainfo"><span class="kennzahl">{ String(opts.data.pageviews_news).replace(/(.)(?=(\d{3})+$)/g,"$1'") }</span>
        <span class="infotext">Seitenaufrufe bei Eigenleistungen</span>
    </p>

    <p class="metainfo"><span class="kennzahl">{ String(opts.data.pageviews_newswire).replace(/(.)(?=(\d{3})+$)/g,"$1'") }</span>
        <span class="infotext">Seitenaufrufe bei SDA</span>
    </p>


    <p class="metainfo"><span class="kennzahl">{ String(opts.data.pageviews_total).replace(/(.)(?=(\d{3})+$)/g,"$1'") }</span>
        <span class="infotext">Seitenaufrufe insgesamt</span>
    </p>


</dashboard-meta>