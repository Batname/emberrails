App.ProductView = Ember.View.extend({
    classNames: [ 'row' ],
    classNameBindings: ['isOnSale'],
    isOnSale: Ember.computed.alias('controller.isOnSale')
});