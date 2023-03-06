
require 'json'
require 'sinatra'
require 'rack/cors'


use Rack::Cors do
  allow do
    origins '*' # you can specify your own origins here
    resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options]
  end
end

# your app code goes here



memes = {
  "memes": [
    {
      "id": "1",
      "title": "Distracted Boyfriend",
      "image_url": "https://i.imgflip.com/1ur9b0.jpg",
      "caption": "When you're supposed to be studying for your exam but memes are life",
      "tags": [
        "study",
        "exams",
        "memes"
      ],
      "created_at": "2022-02-28T12:00:00Z",
      "updated_at": "2022-02-28T12:00:00Z",
      "username": "meme_lord",
      "profile_picture": "https://i.imgur.com/9Dh2sB8.jpg"
    },
    {
      "id": "2",
      "title": "Two Buttons",
      "image_url": "https://i.imgflip.com/1g8my4.jpg",
      "caption": "When you have to make a tough decision",
      "tags": [
        "decisions",
        "funny",
        "meme"
      ],
      "created_at": "2022-03-01T14:30:00Z",
      "updated_at": "2022-03-01T14:30:00Z",
      "username": "meme_queen",
      "profile_picture": "https://i.imgur.com/1juwIZp.jpg"
    },
    {
      "id": "3",
      "title": "Drake Hotline Bling",
      "image_url": "https://i.imgflip.com/30b1gx.jpg",
      "caption": "When you finally understand that one thing you've been confused about",
      "tags": [
        "understanding",
        "confusion",
        "funny"
      ],
      "created_at": "2022-03-02T09:15:00Z",
      "updated_at": "2022-03-02T09:15:00Z",
      "username": "meme_king",
      "profile_picture": "https://i.imgur.com/EnXadYJ.jpg"
    },
    {
      "id": "4",
      "title": "Expanding Brain",
      "image_url": "https://i.imgflip.com/1jwhww.jpg",
      "caption": "When your intelligence increases with each panel",
      "tags": [
        "intelligence",
        "funny",
        "meme"
      ],
      "created_at": "2022-03-03T11:45:00Z",
      "updated_at": "2022-03-03T11:45:00Z",
      "username": "meme_master",
      "profile_picture": "https://i.imgur.com/t8fKjFf.jpg"
    },
    {
      "id": "5",
      "title": "Hide the Pain Harold",
      "image_url": "https://i.imgflip.com/1g8k1f.jpg",
      "caption": "When you're smiling on the outside but dying on the inside",
      "tags": [
        "pain",
        "suffering",
        "funny",
        "meme"
      ],
      "created_at": "2022-03-04T15:20:00Z",
      "updated_at": "2022-03-04T15:20:00Z",
      "username": "meme_guru",
      "profile_picture": "https://i.imgur.com/dDhkgJz.jpg"

      }
      ]
      }

      get '/memes' do
        content_type :json
        cors do
          memes.to_json
        end
      end

