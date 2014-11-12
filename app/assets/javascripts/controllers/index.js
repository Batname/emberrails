App.IndexController = Ember.ArrayController.extend({

    productsCount: function() {
        return this.get('length');
    }.property( 'length' ),
    logo: 'logo.png',
    time: function() {
        return (new Date()).toDateString()
    }.property(),
    onSale: function() {
        return this.filterBy('isOnSale').slice(0,3);
    }.property('@each.isOnSale')
});