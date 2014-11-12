# for more details see: http://emberjs.com/guides/models/defining-models/

App.Comment = DS.Model.extend
  commenter: DS.attr('string')
  body: DS.attr('string')
  created_at: DS.attr('date')
  product: DS.belongsTo('product')

