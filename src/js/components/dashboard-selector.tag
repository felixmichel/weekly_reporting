<dashboard-selector>

    <article class="wide">
        <h2>
            <a class="selector" href="#" each="{ week, i in opts.weeks }" onclick="{ switchweek }">
                    { week.week }
            </a>
        </h2>

    </article>


    <script type="text/babel">

        this.switchweek = function (e) {
            opts.onnextclick(e.item.week.week, e.item.week.id)
        }



    </script>

</dashboard-selector>
