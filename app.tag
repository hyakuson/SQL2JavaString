<app>
    <h1>{ title }</h1>
    <div>
        <input-textarea refid="sql"></input-textarea>
    </div>
    <div>
        
        <label-text text="前につける"></label-text>
        <input-text refid="mae" val="{ mae }"></input-text>
    </div>
    <div>
        <label-text text="後につける"></label-text>
        <input-text refid="ato" val="{ ato }"></input-text>
    </div>
    <div>
        <button onclick={ replace }>置換</button>
    </div>
        <div>
        <input-textarea refid="replaced"></input-textarea>
    </div>
    <a href="https://github.com/hyakuson/SQL2JavaString">View on Github</a>
    <script>
        this.title = "SQLをJavaのStringにするやーつ";
        this.mae = 'sb.append(" ';
        this.ato = ' ");';
        this.sql = "";

        replace () {
            var mae = document.getElementById("mae").value || "",
                ato = document.getElementById("ato").value || "",
                str = document.getElementById("sql").value || "",
                textArray = str.split(/\r\n|\r|\n/),
                replaced = [];

            textArray.forEach((text, index) => {
                if (text.length > 0) {
                    replaced[index] = mae.toString() + text + ato.toString();
                }
            });

            document.getElementById("replaced").value = replaced.join("\r\n");
        };
    </script>
</app>
