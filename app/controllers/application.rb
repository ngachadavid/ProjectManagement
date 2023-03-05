class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    post '/projects' do
        name = params[:name]
        description = params[:description]

        project = Project.create(name: name, description: description)

        if project.valid?
          status 201
          project.to_json
        else
          status 422
          project.errors.to_json
        end
      end

      get '/projects/:id' do
        project = Project.find_by(id: params[:id])

        if project
          project.to_json
        else
          status 404
          { error: "Project not found" }.to_json
        end
      end


      patch '/projects/:id' do
        project = Project.find_by(id: params[:id])

        if project
          project.update(params.slice(:name, :description))
          if project.valid?
            project.to_json
          else
            status 422
            project.errors.to_json
          end
        else
          status 404
          { error: "Project not found" }.to_json
        end
      end

      delete '/projects/:id' do
        project = Project.find(params[:id])
        if project.destroy
          status 204
        else
          status 500
          { error: 'Failed to delete project' }.to_json
        end
      end

    end



