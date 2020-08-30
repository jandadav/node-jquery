let self = (module.exports = {
    
    replaceTag: function ($, tag, replace) {
        $(tag).each( (i, el) => {
            let children = $(el).contents();
            if (replace != '') {
                $(el).wrap(`<${replace}>`);
            }
            $(el).replaceWith(children);
        })
    },

    serialize: function ($) {
        return $('*').html();
    },

    wrapXhtml: function (html) {
        return '<doc xmlns="http://www.w3.org/1999/xhtml" xmlns:asp="http://www.whatever.com">\n' + html + '\n</doc>'
    }
});