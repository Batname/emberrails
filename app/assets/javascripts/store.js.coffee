# http://emberjs.com/guides/models/#toc_store
# http://emberjs.com/guides/models/pushing-records-into-the-store/

App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'
#configure: 'plurals', entry: 'products'
