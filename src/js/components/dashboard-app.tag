<dashboard-app>

    <article class="wide">

    <dashboard-selector weeks="{ opts.weeklyData }" onnextclick="{ this.showNext }"></dashboard-selector>

    </article>

    <article class="wide">
        <h2>Kennzahlen und die meistgelesenen Topics</h2>
    </article>

    <article class="short more">

        <dashboard-meta data="{ dataset }"></dashboard-meta>

    </article>

    <article class="wide">
        <h2>Top und Flop der letzten Woche</h2>

    </article>

    <!-- Top -->
    <article class="short more">

        <dashboard-top data="{ dataset }"></dashboard-top>

    </article>

    <!-- Flop -->
    <article class="short more">

        <dashboard-flop data="{ dataset }"></dashboard-flop>

    </article>


    <script type="text/babel">

        this.activeWeek = 'kw_4_2017'

        const findWeek = (data, current) => {
        return data.find(({week}) => week === current)
        }

        this.dataset = findWeek(opts.weeklyData, this.activeWeek)

        this.showNext = (id) => {
            this.update({
                dataset: findWeek(this.opts.weeklyData, id)
            })
        }


    </script>


</dashboard-app>