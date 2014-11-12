var App = Ember.Application.create({
    LOG_TRANSITIONS: true
});

App.Router.map(function() {
    this.route('about');
    this.resource('shops', function() {
        this.resource('shop', { path: '/:title' });
    });
});

App.IndexController = Ember.Controller.extend({
    shopsCount: 6,
    logo: 'logo.png',
    time: function() {
        return (new Date()).toDateString()
    }.property()
});


App.ShopsRoute = Ember.Route.extend({
    model: function() {
        return App.SHOPS;
    }
});

App.ShopRoute = Ember.Route.extend({
    model: function(params) {
        return App.SHOPS.findBy('title', params.title);
    }
});

App.SHOPS = [
    {
        title: 'Flint',
        price: 99,
        description: 'Flint is...',
        isOnSale: true,
        image: 'flint.jpg'
    },
    {
        title: 'Kindling',
        price: 249,
        description: 'Easily...',
        isOnSale: false,
        image: 'kindling.jpg'
    }
];