<dashboard-flop>

    <div id="mostread">
        <h3>{ opts.data.flop[0].title }</h3>
        <a class="bar flop" style="width: { firstValue }px;" href="{ opts.data.flop[0].url }" target="_blank>" title="Zum Artikel">
            { opts.data.flop[0].Seitenaufrufe }
        </a>
        <h3>{ opts.data.flop[1].title }</h3>
        <a class="bar flop" style="width: { secondValue }px;" href="{ opts.data.flop[1].url }" target="_blank>" title="Zum Artikel">
            { opts.data.flop[1].Seitenaufrufe }
        </a>
        <h3>{ opts.data.flop[2].title }</h3>
        <a class="bar flop" style="width: { thirdValue }px;" href="{ opts.data.flop[2].url }" target="_blank>" title="Zum Artikel">
            { opts.data.flop[2].Seitenaufrufe }
        </a>
        <h3>{ opts.data.flop[3].title }</h3>
        <a class="bar flop" style="width: { fourthValue }px;" href="{ opts.data.flop[3].url }" target="_blank>" title="Zum Artikel">
            { opts.data.flop[3].Seitenaufrufe }
        </a>
        <h3>{ opts.data.flop[4].title }</h3>
        <a class="bar flop" style="width: { fifthValue }px;" href="{ opts.data.flop[4].url }" target="_blank>" title="Zum Artikel">
            { opts.data.flop[4].Seitenaufrufe }
        </a>
    </div>

    <script type="text/babel">

        import * as d3 from 'd3'

        this.on('update', () => {

            var width = 450

            var y = d3.scaleLinear()
                    .range([0, width]);

            y.domain([0, d3.max(opts.data.top, function (d) {
                return d.Seitenaufrufe;
            })]);

            this.firstValue = y(opts.data.flop[0].Seitenaufrufe)
            this.secondValue = y(opts.data.flop[1].Seitenaufrufe)
            this.thirdValue = y(opts.data.flop[2].Seitenaufrufe)
            this.fourthValue = y(opts.data.flop[3].Seitenaufrufe)
            this.fifthValue = y(opts.data.flop[4].Seitenaufrufe)

        })

    </script>

</dashboard-flop>