<input-text>
    <input
        type="text"
        id="{id}"
        ref="{reftext}" 
        value="{val}" 
        onchange="{onchange}" 
        oninput="{oninput}">
    <script>
    this.id = opts.refid;
    this.reftext = opts.reftext;
    this.val = opts.val;
    this.onchange = opts.onchange || {};
    
    // データバインディング的なもの
    oninput (e) {
        console.log("oninput")
        this.val = e.target.value;
    }
    </script>
</input-text>
