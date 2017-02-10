<dashboard-app>

    <!-- Logo, Titel & Einleitung -->
    <article class="wide intro">
        <h1>tageswoche.ch in Zahlen, { activeWeek }</h1>
    </article>

    <article class="wide">

    <dashboard-selector weeks="{ opts.weeklyData }" aktiv="{ activeWeek }" onnextclick="{ this.changeWeek }"></dashboard-selector>

    </article>

    <dashboard-meta data="{ dataset }" previous="{ previousDataset }"></dashboard-meta>


    <!-- Top -->
    <article class="short margin">

        <h2>Top</h2>

        <dashboard-top data="{ dataset }"></dashboard-top>

    </article>

    <!-- Flop -->
    <article class="short margin">

        <h2>Flop</h2>

        <dashboard-flop data="{ dataset }"></dashboard-flop>

    </article>


    <script type="text/babel">

        this.activeWeek = 'KW 4'

        this.previousID = 3

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