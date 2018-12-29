<app>
    <h1>{ opts.title }</h1>
    <div>
        <textarea ref="sql" cols="50" rows="10"></textarea>
    </div>
    <div>
        前につける
        <input type="text" ref="mae" value='{mae}'>
    </div>
    <div>
        後につける
        <input type="text" ref="ato" value='{ato}'>
    </div>
    <div>
        <button onclick={ replace }>置換</button>
    </div>
        <div>
        <textarea ref="replaced" cols="50" rows="10"></textarea>
    </div>
    <a href="https://github.com/hyakuson/SQL2JavaString">View on Github</a>
    <script>
        this.mae = 'sb.append(" ';
        this.ato = ' ");';
        this.sql = "";

        replace () {
            var mae = this.refs.mae.value || "",
                ato = this.refs.ato.value || "",
                str = this.refs.sql.value || "",
                textArray = str.split(/\r\n|\r|\n/),
                replaced = [];

            textArray.forEach((text, index) => {
                if (text.length > 0) {
                    replaced[index] = mae.toString() + text + ato.toString();
                }
            });

            this.refs.replaced.value = replaced.join("\r\n");
        };
    </script>
</app>
