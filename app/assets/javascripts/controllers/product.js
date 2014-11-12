App.ProductController = Ember.ObjectController.extend({
    comment: function() {
        return this.store.createRecord('comment', {
            product: this.get('model')
        });
    }.property('model'),
    actions: {
        createComment: function() {
            console.log('createComment Called');
//            var comment = this.store.createComment('comment', {
//                body: this.get('string'),
//                product: this.get('model'),
//                created_at: new Date()
//            });
//
//            var controller = this;
//
//            comment.save().then(function(comment) {
//                controller.set('body', '');
//                controller.get('model.comments').addObject(comment);
//            });
        }
    },
    isNotCommented: Ember.computed.alias('comment.isNew')
});