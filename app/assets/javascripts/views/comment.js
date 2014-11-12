/**
 * Created by bat on 12.11.14.
 */
App.CommentView = Ember.View.extend({
    isExpanded: false,
    classNameBindings: ['isExpanded', 'readMore'],
    click: function() {
        this.toggleProperty('isExpanded');
    },
    readMore: Ember.computed.gt('length', 140)
});