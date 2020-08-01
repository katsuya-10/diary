class DaylivesController < ApplicationController
  before_action :set_daylife, only: [:show, :edit, :update, :destroy]
  # before_action メソッド名,条件ハッシュアクションを呼ぶ前に特定の処理をしたい場合。


  # GET /daylives
  # GET /daylives.json
  def index
    @daylives = Daylife.all
  end

  # GET /daylives/1
  # GET /daylives/1.json
  def show
  end

  # GET /daylives/new
  # 登録画面newに対応するアクション
  def new
    @daylife = Daylife.new
  end

  # GET /daylives/1/edit
  # 日記データの登録画面editに対応するアクション
  def edit
  end

  # POST /daylives
  # POST /daylives.json
  def create
    @daylife = Daylife.new(daylife_params)
    #入力データを取得してインスタンスに代入
    respond_to do |format|
      if @daylife.save
        format.html { redirect_to @daylife, notice: 'Daylife was successfully created.' }
        format.json { render :show, status: :created, location: @daylife }
      else
        format.html { render :new }
        format.json { render json: @daylife.errors, status: :unprocessable_entity }
        # json形式で日記データの保存に失敗した場合 全てのエラーメッセージを返す
      end
    end
  end

  # PATCH/PUT /daylives/1
  # PATCH/PUT /daylives/1.json
  def update
  # データ更新処理
    respond_to do |format|
      if @daylife.update(daylife_params)
        format.html { redirect_to @daylife, notice: 'Daylife was successfully updated.' }
        format.json { render :show, status: :ok, location: @daylife }
      else
        format.html { render :edit }
        format.json { render json: @daylife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daylives/1
  # DELETE /daylives/1.json
  def destroy
  # データ削除処理を行うdestroyアクション
    @daylife.destroy
    respond_to do |format|
      format.html { redirect_to daylives_url, notice: 'Daylife was successfully destroyed.' }
      # ブラウザーからデータを削除した場合に実行
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daylife
    # 2で指定したインスタンスのメソッドを呼び出し
      @daylife = Daylife.find(params[:id])
      # params[:id]にはdaylives/1の1が入る
    end

    # Only allow a list of trusted parameters through.
    def daylife_params
      params.require(:daylife).permit(:title, :body)
      # フォールからの送信データをparamsで取得。titleは日記タイトルの入力データ、diary,bodyは日記本文の入力データ取得
      # params.require(モデル名).permit(キー1,キー1,...) HTTPリクエストから必要なデータを受け取る
    end
end
