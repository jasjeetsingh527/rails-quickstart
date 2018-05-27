# README

Ruby 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]<br />
Rails 5.1.6<br />

1. How to Install:<br />
1.1. Download or Pull project from git.<br />
1.2. `Bundle install`<br />
1.3. `rails db:create`<br />
1.4. `rails s`<br />

2. How to config swagger:<br />
2.1. Go to "\config\initializers"<br />
2.2. Open "swagger_docs.rb"<br />

`<br />
#\config\initializers<br />
class Swagger::Docs::Config<br />
  def self.base_api_controller<br />
    ActionController::Base<br />
  end<br />
end`<br />
<br />
`Swagger::Docs::Config.register_apis({<br />
    "1.0" => {<br />
        :controller_base_path => "",<br />
        # the extension used for the API<br />
        :api_file_path => "public",<br />
        # the URL base path to your API<br />
        :base_path => "http://localhost:3000",  #change this url with your ip address<br />
        # if you want to delete all .json files at each generation<br />
        :clean_directory => false,<br />
        # add custom attributes to api-docs<br />
        :attributes => {<br />
            :info => {<br />
                "title" => "Quickstart app",<br />
                "description" => "This is an API for an quickstart",<br />
                "termsOfServiceUrl" => "https://github.com/jasjeetsingh527/rails-quickstart",<br />
                "contact" => "jasjeetsingh527@gmail.com",<br />
                "license" => "Apache 2.0",<br />
                "licenseUrl" => "http://www.apache.org/licenses/LICENSE-2.0.html"<br />
            }<br />
        }<br />
    }<br />
})`<br />
2.3. Run command `rake swagger:docs`<br />
For more information visit: `https://github.com/richhollis/swagger-docs`<br />