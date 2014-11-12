//# for more details see: http://emberjs.com/guides/models/defining-models/

App.Product = DS.Model.extend({
  title: DS.attr('string'),
  price: DS.attr('number'),
  description: DS.attr('string'),
  image: DS.attr('string'),
  isOnSale: DS.attr('boolean'),
  comment_ids: DS.hasMany('comment', {async: true})
});




