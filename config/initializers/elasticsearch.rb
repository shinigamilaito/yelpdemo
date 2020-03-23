# Setting URL searchbox with elastic
Elasticsearch::Model.client = Elasticsearch::Client.new host: ENV['SEARCHBOX_URL']