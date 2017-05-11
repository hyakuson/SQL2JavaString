<app>
    <h1>{ opts.title }</h1>
    <div>
        <textarea id='sql'
            cols={opts.origin.cols || 50}
            rows={opts.origin.rows || 10}>
        </textarea>
    </div>
    <div>
        前につける
        <input type="text" id="mae" value=''>
    </div>
    <div>
        後につける
        <input type="text" id="ato" value=''>
    </div>
    <div>
        <button id="replaceButton" onClick={ replace }>置換</button>
    </div>
        <div>
        <textarea id="replaced" cols="50" rows="10"></textarea>
    </div>
    <a href="https://github.com/hyakuson/SQL2JavaString">View on Github</a>
    <script>
        this.mae.value = 'sb.append(" ';
        this.ato.value = ' ");';

        replace () {
            var mae = this.mae.value,
                ato = this.ato.value,
                str = this.sql.value,
                textArray = str.split(/\r\n|\r|\n/),
                replaced = [];

            textArray.forEach(function (text, index) {
                if (text.length > 0) {
                    replaced[index] = mae.toString() + text + ato.toString();
                }
            });

            this.replaced.value = replaced.join("\r\n");
        };
    </script>
</app>
