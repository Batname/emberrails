App.ProductsOnsaleRoute = Ember.Route.extend({
    model: function () {
        return this.modelFor('products').filterBy('isOnSale');
    }
});