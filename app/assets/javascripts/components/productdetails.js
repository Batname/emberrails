App.ProductDetailsComponent = Ember.Component.extend({
    commentsCount: Ember.computed.alias('product.comment_ids.length'),
    hasComments: function() {
        return this.get('commentsCount') > 0;
    }.property('commentsCount')
});