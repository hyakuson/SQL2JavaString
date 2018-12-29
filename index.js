document.getElementById('replaceButton').addEventListener('click', function () {
    'use strict';
    var mae = document.getElementById('mae').value,
        ato = document.getElementById('ato').value,
        str = document.getElementById('sql').value,
        textArray = str.split(/\r\n|\r|\n/),
        replaced = [];

    textArray.forEach(function (text, index) {
        if (text.length > 0) {
            replaced[index] = 'sb.append(" ' + text + ' ");';
        }
    });

    document.getElementById('replaced').value = replaced.join("\r\n");
});
