<dashboard-app>

    <!-- Logo, Titel & Einleitung -->
    <article class="wide intro">
        <h1>tageswoche.ch in Zahlen, { activeWeek }</h1>
    </article>


    <dashboard-selector weeks="{ opts.weeklyData }" aktiv="{ activeWeek }" onnextclick="{ this.changeWeek }"></dashboard-selector>

    <dashboard-meta data="{ dataset }" previous="{ previousDataset }"></dashboard-meta>


    <!-- Top -->
    <article class="short margin">

        <h2>Ziel erreicht</h2>


        <dashboard-top data="{ dataset }"></dashboard-top>

    </article>

    <!-- Flop -->
    <article class="short margin">

        <h2>Chance verpasst</h2>

        <dashboard-flop data="{ dataset }"></dashboard-flop>

    </article>

    <article class="wide" style="text-align: center; margin-top: 20px;">
        <div class="legend-box">
            <div class="legend pageviews"></div><div class="legend-label">Pageviews</div>
            <div class="legend shares"></div><div class="legend-label">Shares</div>
            <div class="legend comments"></div><div class="legend-label">Kommentare</div>
            <div class="legend readtime"></div><div class="legend-label">Lesezeit</div>
        </div>
    </article>


    <script type="text/babel">

        this.activeWeek = 'KW 5'

        this.previousID = 4

        const findWeek = (data, current) => {
        return data.find(({week}) => week === current)
        }

        const findID = (data, previous) => {
            return data.find(({id}) => id === previous)
        }

        this.previousDataset = findID(opts.weeklyData, this.previousID)

        this.dataset = findWeek(opts.weeklyData, this.activeWeek)

        this.changeWeek = (week , id) => {
            this.update({
                dataset: findWeek(this.opts.weeklyData, week),
                activeWeek: week,
                previousDataset: findID(opts.weeklyData, (id - 1))
            })
        }


    </script>


</dashboard-app>