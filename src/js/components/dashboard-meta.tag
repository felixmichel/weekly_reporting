<dashboard-meta>

    <article class="short more">

        <p class="metainfo">
            <span class="kennzahl {flagged: this.classNutzer}">
                { String(opts.data.nutzer).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
            </span>
            <span class="infotext">
                <span if="{ facebookChange }">({ labelNutzer }{ nutzerChange.toFixed(1) }%)</span>
                <span> Nutzer insgesamt</span>
            </span>
        </p>

        <p class="metainfo">
            <span class="kennzahl {flagged: this.classPublished}">
                { opts.data.published_articles }
            </span>
            <span class="infotext">
                <span if="{ facebookChange }">({ labelPublished }{ publishedChange.toFixed(1) }%)</span>
                <span> publizierte Artikel</span>
            </span>
        </p>

        <p class="metainfo">
            <span class="kennzahl {flagged: this.classFacebook}">
                { String(opts.data.facebook_interaktionen).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
            </span>

            <span class="infotext">
                <span if="{ facebookChange }">({ labelFacebook }{ facebookChange.toFixed(1) }%)</span>
                <span> Facebook-Interaktionen der publizierten Artikel</span>
            </span>
        </p>

    </article>

    <article class="short more">

        <p class="metainfo">
            <span class="kennzahl {flagged: this.classNews}">
                { String(opts.data.pageviews_news).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
            </span>
            <span class="infotext">
                <span if="{ facebookChange }">({ labelNews }{ newsChange.toFixed(1) }%)</span>
                <span> Seitenaufrufe bei Eigenleistungen</span>
            </span>
        </p>

        <p class="metainfo">
            <span class="kennzahl {flagged: this.classNewswire}">
                { String(opts.data.pageviews_newswire).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
            </span>
            <span class="infotext">
                <span if="{ facebookChange }">({ labelNewswire }{ newswireChange.toFixed(1) }%)</span>
                <span> Seitenaufrufe bei SDA</span>
            </span>
        </p>


        <p class="metainfo">
            <span class="kennzahl {flagged: this.classPageviews}">
                { String(opts.data.pageviews_total).replace(/(.)(?=(\d{3})+$)/g,"$1'") }
            </span>
            <span class="infotext">
                <span if="{ facebookChange }">({ labelPageviews }{ pageviewsChange.toFixed(1) }%)</span>
                <span>Seitenaufrufe insgesamt</span>
            </span>
        </p>

    </article>

    <script type="text/babel">




        this.on('update', () => {

            const calculateChange = (current, previous) => {
                return (current * 100 / previous) - 100
            }

            if(this.opts.previous) {
                this.facebookChange = calculateChange(this.opts.data.facebook_interaktionen, this.opts.previous.facebook_interaktionen)
                if (this.facebookChange > 0) {
                    this.labelFacebook = '+'
                    this.classFacebook = 0
                } else {
                    this.labelFacebook = ''
                    this.classFacebook = 1
                }

                this.nutzerChange = calculateChange(this.opts.data.nutzer, this.opts.previous.nutzer)
                if (this.nutzerChange > 0) {
                    this.labelNutzer = '+'
                    this.classNutzer = 0
                } else {
                    this.labelNutzer = ''
                    this.classNutzer = 1
                }

                this.publishedChange = calculateChange(this.opts.data.published_articles, this.opts.previous.published_articles)
                if (this.publishedChange > 0) {
                    this.labelPublished = '+'
                    this.classPublished = 0
                } else {
                    this.labelPublished = ''
                    this.classPublished = 1
                }

                this.newsChange = calculateChange(this.opts.data.pageviews_news, this.opts.previous.pageviews_news)
                if (this.newsChange > 0) {
                    this.labelNews = '+'
                    this.classNews = 0
                } else {
                    this.labelNews = ''
                    this.classNews = 1
                }

                this.newswireChange = calculateChange(this.opts.data.pageviews_newswire, this.opts.previous.pageviews_newswire)
                if (this.newswireChange > 0) {
                    this.labelNewswire = '+'
                    this.classNewswire = 0
                } else {
                    this.labelNewswire = ''
                    this.classNewswire = 1
                }

                this.pageviewsChange = calculateChange(this.opts.data.pageviews_total, this.opts.previous.pageviews_total)
                if (this.pageviewsChange > 0) {
                    this.labelPageviews = '+'
                    this.classPageviews = 0
                } else {
                    this.labelPageviews = ''
                    this.classPageviews = 1
                }


            } else {
                this.facebookChange = ''
                this.classFacebook = 0
                this.classNutzer = 0
                this.classPublished = 0
                this.classNews = 0
                this.classNewswire = 0
                this.classPageviews = 0
            }

        })

    </script>


</dashboard-meta>