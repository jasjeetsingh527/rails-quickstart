# README

Ruby 2.3.3p222 (2016-11-21 revision 56859) [i386-mingw32]
Rails 5.1.6

1. How to Install:
1.1. Download or Pull project from git.
1.2. `Bundle install`
1.3. `rails db:create`
1.4. `rails s`

2. How to config swagger:
2.1. Go to "\config\initializers"
2.2. Open "swagger_docs.rb"

`
#\config\initializers
class Swagger::Docs::Config
  def self.base_api_controller
    ActionController::Base
  end
end`

`Swagger::Docs::Config.register_apis({
    "1.0" => {
        :controller_base_path => "",
        # the extension used for the API
        :api_file_path => "public",
        # the URL base path to your API
        :base_path => "http://localhost:3000",  #change this url with your ip address
        # if you want to delete all .json files at each generation
        :clean_directory => false,
        # add custom attributes to api-docs
        :attributes => {
            :info => {
                "title" => "Quickstart app",
                "description" => "This is an API for an quickstart",
                "termsOfServiceUrl" => "https://github.com/jasjeetsingh527/rails-quickstart",
                "contact" => "jasjeetsingh527@gmail.com",
                "license" => "Apache 2.0",
                "licenseUrl" => "http://www.apache.org/licenses/LICENSE-2.0.html"
            }
        }
    }
})`
2.3. Run command `rake swagger:docs`
For more information visit: `https://github.com/richhollis/swagger-docs`