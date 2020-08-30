let self = (module.exports = {
    
    replaceTag: function ($, tag, replace) {
        $(tag).replaceWith(`<${replace}>`);
    },

    serialize: function ($) {
        return $('body').html();
    }
});