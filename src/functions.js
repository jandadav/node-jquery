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
        return $('body').html();
    }
});