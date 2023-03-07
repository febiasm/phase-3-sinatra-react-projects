require 'sinatra/cross_origin'
require 'json'
require 'sinatra'


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
      "username":

"meme_guru",
"profile_picture": "https://i.imgur.com/DHTtIMW.jpg"
},
{
  "id": "6",
  "title": "One Does Not Simply",
  "image_url": "https://i.imgflip.com/1bij.jpg",
  "caption": "When you try to explain a complicated concept",
  "tags": [
    "complicated",
    "explanation",
    "meme"
  ],
  "created_at": "2022-03-05T10:10:00Z",
  "updated_at": "2022-03-05T10:10:00Z",
  "username": "meme_expert",
  "profile_picture": "https://i.imgur.com/6uYq3bc.jpg"
},
{
  "id": "7",
  "title": "Mocking Spongebob",
  "image_url": "https://i.imgflip.com/1otk96.jpg",
  "caption": "When someone says something stupid",
  "tags": [
    "stupidity",
    "mocking",
    "funny",
    "meme"
  ],
  "created_at": "2022-03-06T13:40:00Z",
  "updated_at": "2022-03-06T13:40:00Z",
  "username": "meme_genius",
  "profile_picture": "https://i.imgur.com/iK5rq6f.jpg"
},
{
  "id": "8",
  "title": "Grumpy Cat",
  "image_url": "https://i.imgflip.com/8p0a.jpg",
  "caption": "When you're just not in the mood",
  "tags": [
    "mood",
    "attitude",
    "funny",
    "meme"
  ],
  "created_at": "2022-03-07T17:25:00Z",
  "updated_at": "2022-03-07T17:25:00Z",
  "username": "meme_addict",
  "profile_picture": "https://i.imgur.com/H9U6Gce.jpg"
},
{
  "id": "9",
  "title": "Arthur Fist",
  "image_url": "https://i.imgflip.com/22bdq6.jpg",
  "caption": "When you're angry but don't want to show it",
  "tags": [
    "anger",
    "emotions",
    "meme"
  ],
  "created_at": "2022-03-08T09:15:00Z",
  "updated_at": "2022-03-08T09:15:00Z",
  "username": "meme_lover",
  "profile_picture": "https://i.imgur.com/feKwONi.jpg"
},
{
  "id": "10",
  "title": "Surprised Pikachu",
  "image_url": "https://i.imgflip.com/3lmzyx.jpg",
  "caption": "When something unexpected happens",
  "tags": [
    "surprise",
    "unexpected",
    "meme"
  ],
  "created_at": "2022-03-09T14:30:00Z",
  "updated_at": "2022-03-09T14:30:00Z",
  "username": "meme_guru",
  "profile_picture": "https://i.imgur.com/4Jd4j4X.jpg"
},
{
  "id": "16",
  "title": "Arthur Fist",
  "image_url": "https://i.imgflip.com/22bdq6.jpg",
  "caption": "When you're just about to lose it",
  "tags": [
    "anger",
    "frustration",
    "meme"
  ],
  "created_at": "2022-03-14T10:30:00Z",
  "updated_at": "2022-03-14T10:30:00Z",
  "username": "meme_god",
  "profile_picture": "https://i.imgur.com/4tq3nOW.jpg"
},
{
  "id": "17",
  "title": "Is This A Pigeon?",
  "image_url": "https://i.imgflip.com/2gnnjh.jpg",
  "caption": "When you have no idea what's going on",
  "tags": [
    "confusion",
    "meme"
  ],
  "created_at": "2022-03-15T13:45:00Z",
  "updated_at": "2022-03-15T13:45:00Z",
  "username": "meme_queen",
  "profile_picture": "https://i.imgur.com/1juwIZp.jpg"
},
{
  "id": "18",
  "title": "Change My Mind",
  "image_url": "https://i.imgflip.com/24y43o.jpg",
  "caption": "Prove me wrong",
  "tags": [
    "debate",
    "opinions",
    "meme"
  ],
  "created_at": "2022-03-16T16:20:00Z",
  "updated_at": "2022-03-16T16:20:00Z",
  "username": "meme_lord",
  "profile_picture": "https://i.imgur.com/9Dh2sB8.jpg"
},
{
  "id": "19",
  "title": "Woman Yelling at a Cat",
  "image_url": "https://i.imgflip.com/2wifvo.jpg",
  "caption": "When you're arguing with someone who just doesn't get it",
  "tags": [
    "argument",
    "frustration",
    "meme"
  ],
  "created_at": "2022-03-17T19:05:00Z",
  "updated_at": "2022-03-17T19:05:00Z",
  "username": "meme_king",
  "profile_picture": "https://i.imgur.com/EnXadYJ.jpg"
},
{
  "id": "20",
  "title": "Spiderman Pointing at Spiderman",
  "image_url": "https://i.imgflip.com/1tkjq9.jpg",
  "caption": "When you see someone who looks just like you",
  "tags": [
    "doppelganger",
    "lookalike",
    "meme"
  ],
  "created_at": "2022-03-18T22:00:00Z",
  "updated_at": "2022-03-18T22:00:00Z",
  "username": "meme_master",
  "profile_picture": "https://i.imgur.com/t8fKjFf.jpg"
},
{
  "id": "21",
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
  "username": "MemeQueen123",
  "profile_picture": "https://i.imgur.com/LaVcYfE.jpg"
}
]
}
configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

options "*" do
  response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end
get '/' do
content_type :json
memes.to_json
end

get '/memes' do
  content_type :json
  memes.to_json
end

# Add a new meme
post '/memes' do
  content_type :json
  request.body.rewind
  data = JSON.parse request.body.read
  new_meme = {
    "id": (memes.length + 1).to_s,
    "title": data['title'],
    "image_url": data['image_url'], # updated to 'image_url' instead of 'url'
    "caption": data['caption'],
    "tags": data['tags'],
    "created_at": Time.now.utc.strftime('%FT%T.%LZ'),
    "updated_at": Time.now.utc.strftime('%FT%T.%LZ'),
    "username": data['username'], # new field to store the username of the person who added the meme
    "profile_picture": data['profile_picture'],
    "added_by": data['username'] # new field to store the username of the person who added the meme
  }
  memes[:memes] << new_meme
  { success: true, meme: new_meme }.to_json
end


# Delete a meme by ID
delete '/memes/:id' do
  content_type :json
  id = params[:id]
  meme = memes[:memes].find { |m| m['id'] == id }
  if meme && meme['added_by'] == request.env['HTTP_USERNAME']
    memes[:memes].delete(meme)
    { success: true }.to_json
  else
    { success: false, message: 'Meme not found or you are not authorized to delete it' }.to_json
  end
end

# Increment the number of likes for a meme by ID
post '/memes/:id/like' do
  content_type :json
  id = params[:id]
  meme = memes.find { |m| m['id'] == id }
  meme['likes'] += 1
  { success: true, meme: meme }.to_json
end
