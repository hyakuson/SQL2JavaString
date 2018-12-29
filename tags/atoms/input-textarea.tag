<input-textarea>
    <textarea id="{refid}" cols="{cols}" rows="{rows}">{text}</textarea>
    <script>
        this.refid = opts.refid;
        this.cols = opts.cols || "50";
        this.rows = opts.rows || "10";
        this.text = opts.text || "";
    </script>
</input-textarea>