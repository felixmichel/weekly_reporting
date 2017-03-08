<dashboard-flop>

    <div id="mostread">

        <div  each="{ entry in opts.data.flop }">

        <h3 style="clear: left;">{ entry.title }</h3>
        <a href="{ entry.url }" class="bar-link">
            <div style="width: { y(entry.kennzahl_pageviews) }px;" class="bar pageviews"></div>
            <div style="width: { y(entry.kennzahl_shares) }px;" class="bar shares"></div>
            <div style="width: { y(entry.kennzahl_comments) }px;" class="bar comments"></div>
            <div style="width: { y(entry.kennzahl_readtime) }px;" class="bar readtime"></div>
            <div class="bar label">{ entry.erfolgsindex.toFixed(1) }</div>
        </a>

    </div>

    </div>

    <script type="text/babel">

        import * as d3 from 'd3'

        this.on('update', () => {

            var width = 400

            this.y = d3.scaleLinear().range([0, width])

            this.y.domain([0, d3.max(opts.data.top, function (d) {
                return d.erfolgsindex
            })])


        })

    </script>

</dashboard-flop>