json.extract! daylife, :id, :title, :body, :created_at, :updated_at
# json.extract! モデルオブジェクト,カラム要素1,カラム要素2,...
json.url daylife_url(daylife, format: :json)