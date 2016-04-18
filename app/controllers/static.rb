#controller
get '/' do
 #show the code content in the index file 
 erb :"static/index", locals: {url: ""}
end

post '/urls' do
 # taking out the Hash key's value out 
 long_url = params[:long_url]
 # create a Object for every new url's input
 new_url = Url.new(long_url: long_url)
 # assigned the result of new_url to short_url 
 new_url.shorten
 new_url.save

 # go into result.erb then display the shortten_url result = locals: => local var
 erb :"static/index", locals: {url: new_url.short_url}
end

get '/:short_url' do
 redirect to :long_url
end