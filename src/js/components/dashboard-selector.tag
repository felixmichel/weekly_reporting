<dashboard-selector>

    <div each="{ week, i in opts.weeks }">
        <a href="#" onclick="{ go(week.week) }">
            { week.week }
        </a>
    </div>


    <script type="text/babel">

        this.go = function (e, value) {
            opts.onnextclick('kw_5_2017')

            console.log(value)
        }

    </script>

</dashboard-selector>
