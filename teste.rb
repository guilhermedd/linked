
require 'mongo'

uri = "mongodb+srv://guiddiel:NF8CR00YaVpVsTmb@dielproject.qmjdut5.mongodb.net/?retryWrites=true&w=majority&appName=dielProject"

# Set the server_api field of the options object to set the version of the Stable API on the client
options = { server_api: {version: "1"} }

# Create a new client and connect to the server
client = Mongo::Client.new(uri, options)

# Send a ping to confirm a successful connection
begin
  admin_client = client.use('admin')
  result = admin_client.database.command(ping: 1)
  puts "Pinged your deployment. You successfully connected to MongoDB!"
rescue Mongo::Error::OperationFailure => ex
  puts ex
ensure
  client.close
end
