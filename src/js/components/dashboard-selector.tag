<dashboard-selector>

    <div class="selector" each="{ week, i in opts.weeks }">
        <a href="#" onclick="{ switchweek }">
            { week.week }
        </a>
    </div>


    <script type="text/babel">

        this.switchweek = function (e) {
            opts.onnextclick(e.item.week.week, e.item.week.id)
        }



    </script>

</dashboard-selector>
