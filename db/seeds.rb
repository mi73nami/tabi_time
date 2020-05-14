# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#categoriesテーブル
Category.create([{name:"観光スポット"},{name:"レストラン・カフェ"},{name:"ホテル"},{name:"ショップ"},{name:"お土産"},{name:"その他"}])

# placesテーブル
#アジア
asia = Place.create(name:"アジア")
#アジア-インド
india = asia.children.create(name:"インド")
india.children.create([{name:"デリー"},{name:"アグラ"},{name:"ジャイプール"},{name:"バラナシ(ベナレス)"},{name:"ムンバイ(ボンベイ)"},{name:"ベンガルール(バンガロール)"},{name:"チェンナイ"},{name:"アウランガバード"},{name:"ウダイプール"},{name:"ブッダガヤ"},{name:"リシケシ"},{name:"ジョードプール"},{name:"カジュラホ"},{name:"コルカタ(カルカッタ)"},{name:"サルナート"},{name:"パトナ"},{name:"ランタンボール"},{name:"レー"},{name:"その他"}])
#アジア-インドネシア
indonesia = asia.children.create(name:"インドネシア")
indonesia.children.create([{name:"デンパサール(バリ島)"},{name:"ウブド"},{name:"ビンタン島"},{name:"ジョグジャカルタ"},{name:"その他"}])
#アジア-ウズベキスタン
uzbekistan = asia.children.create(name:"ウズベキスタン")
uzbekistan.children.create([{name:"ブハラ"},{name:"タシケント"},{name:"サマルカンド"},{name:"ヒヴァ"},{name:"シャフリサブズ"},{name:"その他"}])
#アジア-カンボジア
cambodia = asia.children.create(name:"カンボジア")
cambodia.children.create([{name:"シェムリアップ"},{name:"プノンペン"},{name:"プレアビヒア"},{name:"その他"}])
#アジア-シンガポール
singapore = asia.children.create(name:"シンガポール")
singapore.children.create([{name:"シンガポール"},{name:"セントーサ島"},{name:"その他"}])
#アジア-スリランカ
srilanka = asia.children.create(name:"スリランカ")
srilanka.children.create([{name:"コロンボ"},{name:"シギリヤ"},{name:"キャンディ"},{name:"ネゴンボ"},{name:"ベントータ"},{name:"ダンブッラ"},{name:"ゴール"},{name:"ヌワラエリア"},{name:"ワッドッワ"},{name:"アヌラーダプラ"},{name:"ヒッカドゥワ"},{name:"ヤーラ"},{name:"ウェリガマ"},{name:"ポロンナルワ"},{name:"その他"}])
#アジア-タイ
thailand = asia.children.create(name:"タイ")
thailand.children.create([{name:"プーケット"},{name:"バンコク"},{name:"チェンマイ"},{name:"アユタヤ"},{name:"パタヤ"},{name:"チェンライ"},{name:"サムイ(島)"},{name:"クラビ"},{name:"ホアヒン・チャアム"},{name:"カオラック"},{name:"ピピ島"},{name:"ヤオノイ島"},{name:"その他"}])
#アジア-トルクメニスタン
turkmenistan = asia.children.create(name:"トルクメニスタン")
turkmenistan.children.create([{name:"アシュハバード"},{name:"その他"}])
#アジア-ネパール
nepal = asia.children.create(name:"ネパール")
nepal.children.create([{name:"カトマンズ"},{name:"ナガルコット"},{name:"ポカラ"},{name:"ルンビニ"},{name:"その他"}])
#アジア-ブータン
bhutan = asia.children.create(name:"ブターン")
bhutan.children.create([{name:"ワンデュ・ポダン"},{name:"ティンプー"},{name:"パロ"},{name:"プナカ"},{name:"その他"}])
#アジア-バングラデシュ
bangladesh = asia.children.create(name:"バングラデシュ")
bangladesh.children.create([{name:"ダッカ"},{name:"チッタゴン"},{name:"ボグラ"},{name:"その他"}])
#アジア-フィリピン
philippines = asia.children.create(name:"フィリピン")
philippines.children.create([{name:"セブ(島)"},{name:"マニラ"},{name:"ボラカイ島"},{name:"エルニド"},{name:"ボホール"},{name:"その他"}])
#アジア-ブルネイ
brunei = asia.children.create(name:"ブルネイ")
brunei.children.create([{name:"バンダルスリブガワン"},{name:"その他"}])
#アジア-ベトナム
vietnam = asia.children.create(name:"ベトナム")
vietnam.children.create([{name:"ホーチミン"},{name:"ハノイ"},{name:"ハロン"},{name:"ホイアン"},{name:"ダナン"},{name:"フエ"},{name:"コンダオ"},{name:"ニャチャン"},{name:"サパ"},{name:"ファンチエット"},{name:"フーコック島"},{name:"その他"}])
#アジア-マレーシア
malaysia = asia.children.create(name:"マレーシア")
malaysia.children.create([{name:"クアラルンプール"},{name:"コタキナバル(ボルネオ島)"},{name:"ペナン(島)"},{name:"ランカウイ(島)"},{name:"キャメロン・ハイランド"},{name:"マラッカ"},{name:"イポー"},{name:"レダン島"},{name:"クチン"},{name:"タマンネガラ"},{name:"その他"}])
#アジア-ミャンマー
myanmar = asia.children.create(name:"ミャンマー")
myanmar.children.create([{name:"ヤンゴン"},{name:"インレー"},{name:"マンダレー"},{name:"カロー"},{name:"ヘーホー"},{name:"バゴー"},{name:"チャイティーヨー"},{name:"バガン/ニャンウー"},{name:"その他"}])
#アジア-モンゴル
mongolia = asia.children.create(name:"モンゴル")
mongolia.children.create([{name:"ウランバートル"},{name:"テレルジ"},{name:"ハーンリゾート"},{name:"アルガラント"},{name:"エルスンタサルハイ"},{name:"その他"}])
#アジア-ラオス
laos = asia.children.create(name:"ラオス")
laos.children.create([{name:"ビエンチャン"},{name:"パクセ"},{name:"ルアンパバーン"},{name:"その他"}])
#アジア-韓国
korea = asia.children.create(name:"韓国")
korea.children.create([{name:"ソウル"},{name:"プサン(釜山)"},{name:"チェジュ島(済州島)"},{name:"キョンジュ(慶州)"},{name:"テグ(大邱)"},{name:"水原"},{name:"インチョン(仁川)"},{name:"その他"}])
#アジア-台湾
taiwan = asia.children.create(name:"台湾")
taiwan.children.create([{name:"タイペイ(台北)"},{name:"タカオ(高雄)"},{name:"ニチゲツタン(日月潭)"},{name:"タイナン(台南)"},{name:"タイチュン(台中)"},{name:"ファーレン(花蓮)"},{name:"その他"}])
#アジア-中国
china = asia.children.create(name:"中国")
china.children.create([{name:"セイト(成都)"},{name:"セイアン(西安)"},{name:"トンコウ(敦煌)"},{name:"ペキン(北京)"},{name:"シャンハイ(上海)"},{name:"ソシュウ(蘇州)"},{name:"ムシャク(無錫)"},{name:"ダイレン(大連)"},{name:"アモイ(廈門)"},{name:"チンタオ(青島)"},{name:"コウシュウ(杭州)"},{name:"ウルムチ(烏魯木斉)"},{name:"ブリョウゲン(武陵源)"},{name:"チョウカカイ(張家界)"},{name:"ホウオウ(鳳凰)"},{name:"その他"}])
#アジア-香港・マカオ
hongkong_macau = asia.children.create(name:"香港・マカオ")
hongkong_macau.children.create([{name:"ホンコン(香港)"},{name:"香港ディズニーランド"},{name:"マカオ(澳門)"},{name:"その他"}])

#オセアニア・南太平洋
oseania_south_pacific = Place.create(name:"オセアニア・南太平洋")
#オセアニア・南太平洋-オーストラリア
australia = oseania_south_pacific.children.create(name:"オーストラリア")
australia.children.create([{name:"パース"},{name:"シドニー"},{name:"ゴールドコースト"},{name:"ケアンズ"},{name:"グリーン島"},{name:"エアーズロック"},{name:"メルボルン(AUS)"},{name:"ブリスベン"},{name:"ハミルトン島"},{name:"パームコーブ"},{name:"モートン島"},{name:"ポートダグラス"},{name:"フィッツロイ島"},{name:"ロットネスト島"},{name:"その他"}])
#オセアニア・南太平洋-セーシェル
seychelles = oseania_south_pacific.children.create(name:"セーシェル")
seychelles.children.create([{name:"マヘ島"},{name:"その他"}])
#オセアニア・南太平洋-タヒチ
tahiti = oseania_south_pacific.children.create(name:"タヒチ")
tahiti.children.create([{name:"パペーテ(タヒチ)"},{name:"モーレア島"},{name:"ボラボラ島"},{name:"ティケハウ島"},{name:"ランギロア島"},{name:"その他"}])
#オセアニア・南太平洋-🇳ニューカレドニア
newcaledonia = oseania_south_pacific.children.create(name:"ニューカレドニア")
newcaledonia.children.create([{name:"ヌーメア"},{name:"ウベア島"},{name:"イルデパン"},{name:"メトル島"},{name:"ブーライユ"},{name:"その他"}])
#オセアニア・南太平洋-ニュージーランド
newzealand = oseania_south_pacific.children.create(name:"ニュージーランド")
newzealand.children.create([{name:"クライストチャーチ"},{name:"マウントクック"},{name:"クイーンズタウン"},{name:"ミルフォード・サウンド"},{name:"テカポ"},{name:"オークランド(ニュージーランド)"},{name:"ロトルア"},{name:"ダニディン"},{name:"ウェリントン"},{name:"ワナカ"},{name:"その他"}])
#オセアニア・南太平洋-フィジー
fiji = oseania_south_pacific.children.create(name:"フィジー")
fiji.children.create([{name:"ナンディ(フィジー本島)"},{name:"フィジー諸島"},{name:"マナ島"},{name:"その他"}])
#オセアニア・南太平洋-マダガスカル
madagascar = oseania_south_pacific.children.create(name:"マダガスカル")
madagascar.children.create([{name:"ベコパカ"},{name:"アンダシベ"},{name:"アンツィラべ"},{name:"フォールドーファン"},{name:"モロンダバ"},{name:"アンタナナリボ"},{name:"その他"}])
#オセアニア・南太平洋-モーリシャス
mauritius = oseania_south_pacific.children.create(name:"モーリシャス")
mauritius.children.create([{name:"モーリシャス(島)"},{name:"その他"}])
#オセアニア・南太平洋-モルディブ
maldives = oseania_south_pacific.children.create(name:"モルディヴ")
maldives.children.create([{name:"マーレ"},{name:"モルディブアイランド"},{name:"その他"}])

#カリブ・中南米
caribbean_latin_america = Place.create(name:"カリブ・中南米")
#カリブ・中南米-アルゼンチン
argentina = caribbean_latin_america.children.create(name:"アルゼンチン")
argentina.children.create([{name:"ブエノスアイレス"},{name:"イグアス"},{name:"ウシュアイア(フエゴ島)"},{name:"カラファテ"},{name:"その他"}])
#カリブ・中南米-キューバ
cuba = caribbean_latin_america.children.create(name:"キューバ")
cuba.children.create([{name:"ハバナ"},{name:"トリニダ"},{name:"サンタクララ"},{name:"バラデロ"},{name:"シエンフエゴス"},{name:"その他"}])
#カリブ・中南米-グアテマラ
guatemala = caribbean_latin_america.children.create(name:"グアテマラ")
guatemala.children.create([{name:"グアテマラシティ"},{name:"その他"}])
#カリブ・中南米-コスタリカ
costarica = caribbean_latin_america.children.create(name:"コスタリカ")
costarica.children.create([{name:"アレナル"},{name:"コルコバード"},{name:"サラピキ"},{name:"サンホセ"},{name:"サン・ヘラルド・デ・ドタ"},{name:"トートゥーゲロ"},{name:"トルトゥゲーロ国立公園"},{name:"モンテベルデ"},{name:"その他"}])
#カリブ・中南米-コロンビア
columbia = caribbean_latin_america.children.create(name:"コロンビア")
columbia.children.create([{name:"カルタヘナ"},{name:"グアタペ"},{name:"ペレイラ"},{name:"ボゴタ"},{name:"メデジン"},{name:"その他"}])
#カリブ・中南米-ジャマイカ
jamaica = caribbean_latin_america.children.create(name:"ジャマイカ")
jamaica.children.create([{name:"オチョリオス"},{name:"キングストン"},{name:"モンテゴベイ"},{name:"その他"}])
#カリブ・中南米-チリ
chile = caribbean_latin_america.children.create(name:"チリ")
chile.children.create([{name:"イースター島"},{name:"サンティアゴ"},{name:"その他"}])
#カリブ・中南米-パナマ
panama = caribbean_latin_america.children.create(name:"パナマ")
panama.children.create([{name:"ガンボア"},{name:"コロン"},{name:"チェルタルド"},{name:"パナマシティ"},{name:"その他"}])
#カリブ・中南米-バハマ
bahamas = caribbean_latin_america.children.create(name:"バハマ")
bahamas.children.create([{name:"ナッソー"},{name:"フリーポート"},{name:"その他"}])
#カリブ・中南米-ブラジル
brazil = caribbean_latin_america.children.create(name:"ブラジル")
brazil.children.create([{name:"フォス・ド・イグアス"},{name:"リオデジャネイロ"},{name:"サン・ルイス"},{name:"レンソイス"},{name:"バヘリーニャス"},{name:"マナウス"},{name:"ブラジリア"},{name:"その他"}])
#カリブ・中南米-ベネズエラ
venezuela = caribbean_latin_america.children.create(name:"ブラジル")
venezuela.children.create([{name:"カナイマ"},{name:"カラカス"},{name:"バルセロナ"},{name:"ラトンシート島"},{name:"その他"}])
#カリブ・中南米-ベリーズ
belize = caribbean_latin_america.children.create(name:"ベリーズ")
belize.children.create([{name:"ベリーズ"},{name:"ホプキンス"},{name:"その他"}])
#カリブ・中南米-ペルー
peru = caribbean_latin_america.children.create(name:"ペルー")
peru.children.create([{name:"リマ"},{name:"ナスカ"},{name:"クスコ"},{name:"マチュピチュ"},{name:"プーノ"},{name:"フリアカ"},{name:"ウルバンバ"},{name:"イキトス"},{name:"イカ"},{name:"その他"}])
#カリブ・中南米-ボリビア
bolivia = caribbean_latin_america.children.create(name:"ボリビア")
bolivia.children.create([{name:"ウユニ"},{name:"ラパス"},{name:"その他"}])
#カリブ・中南米-ホンジュラス
honduras = caribbean_latin_america.children.create(name:"ホンジュラス")
honduras.children.create([{name:"ロアタン島"},{name:"コパンルイナス"},{name:"その他"}])
#カリブ・中南米-メキシコ
mexico = caribbean_latin_america.children.create(name:"メキシコ")
mexico.children.create([{name:"メキシコシティ"},{name:"チチェンイッツァ"},{name:"カンクン"},{name:"グアナファト"},{name:"リビエラ・マヤ"},{name:"その他"}])
#カリブ・中南米-エクアドル
ecuador = caribbean_latin_america.children.create(name:"エクアドル")
ecuador.children.create([{name:"キト"},{name:"ガラパゴス"},{name:"その他"}])

#ハワイ・グアム・サイパン
hawaii_guam_saipan = Place.create(name:"ハワイ・グアム・サイパン")
#ハワイ・グアム・サイパン-グアム
guam = hawaii_guam_saipan.children.create(name:"グアム")
guam.children.create([{name:"グアム(島)"},{name:"その他"}])
#ハワイ・グアム・サイパン-サイパン
saipan = hawaii_guam_saipan.children.create(name:"サイパン")
saipan.children.create([{name:"サイパン(島)"},{name:"その他"}])
#ハワイ・グアム・サイパン-パラオ
palau = hawaii_guam_saipan.children.create(name:"パラオ")
palau.children.create([{name:"コロール"},{name:"その他"}])
#ハワイ・グアム・サイパン-ハワイ
hawaii = hawaii_guam_saipan.children.create(name:"ハワイ")
hawaii.children.create([{name:"ホノルル(オアフ島)"},{name:"コオリナ(オアフ島)"},{name:"コナ(ハワイ島)"},{name:"カフルイ(マウイ島)"},{name:"ヒロ(ハワイ島)"},{name:"リフェ(カウアイ島)"},{name:"ラナイ(島)"},{name:"その他"}])

#ヨーロッパ
europe = Place.create(name:"ヨーロッパ")
#ヨーロッパ-アイスランド
iceland = europe.children.create(name:"アイスランド")
iceland.children.create([{name:"グドルフォス"},{name:"ゲイシール"},{name:"シンクヴェトリル"},{name:"スカフタフェットル"},{name:"セリャランス"},{name:"レイキャヴィク"},{name:"その他"}])
#ヨーロッパ-アイルランド
ireland = europe.children.create(name:"アイルランド")
ireland.children.create([{name:"ダブリン"},{name:"その他"}])
#ヨーロッパ-アルバニア
albania = europe.children.create(name:"アルバニア")
albania.children.create([{name:"ティラナ"},{name:"クルヤ"},{name:"その他"}])
#ヨーロッパ-アルメニア
armenia = europe.children.create(name:"アルメニア")
armenia.children.create([{name:"エレバン"},{name:"その他"}])
#ヨーロッパ-イギリス
england = europe.children.create(name:"イギリス")
england.children.create([{name:"ロンドン"},{name:"湖水地方"},{name:"ストラトフォードアポンエイボン"},{name:"コッツウォルズ"},{name:"ストーンヘンジ"},{name:"マンチェスター(GBR)"},{name:"ウィンダミア"},{name:"エディンバラ"},{name:"オックスフォード"},{name:"その他"}])
#ヨーロッパ-イタリア
italy = europe.children.create(name:"イタリア")
italy.children.create([{name:"ローマ"},{name:"ナポリ"},{name:"フィレンツェ"},{name:"ヴェネチア"},{name:"ベローナ"},{name:"ミラノ"},{name:"カプリ(島)"},{name:"アマルフィ"},{name:"マテーラ"},{name:"アルベロベッロ"},{name:"ティラノ"},{name:"トリノ"},{name:"バーリ"},{name:"パレルモ"},{name:"タオルミーナ"},{name:"ジェノバ"},{name:"クールマイユール"},{name:"その他"}])
#ヨーロッパ-ウクライナ
ukraine = europe.children.create(name:"ウクライナ")
ukraine.children.create([{name:"アルシュタ"},{name:"オデッサ"},{name:"キエフ"},{name:"シンフェロポリ"},{name:"セヴァストーポリ"},{name:"チェルニウツィ"},{name:"チェルノブイリ"},{name:"ドネチク"},{name:"リボフ"},{name:"リヴネ"},{name:"その他"}])
#ヨーロッパ-エストニア
estonia = europe.children.create(name:"エストニア")
estonia.children.create([{name:"タリン"},{name:"タルトゥ"},{name:"ヴィフラ"},{name:"その他"}])
#ヨーロッパ-オーストリア
austria = europe.children.create(name:"オーストリア")
austria.children.create([{name:"ウィーン"},{name:"ザルツブルク"},{name:"ハルシュタット"},{name:"インスブルック"},{name:"デュルンシュタイン"},{name:"ザルツカンマーグート"},{name:"その他"}])
#ヨーロッパ-オランダ
netherlands = europe.children.create(name:"オランダ")
netherlands.children.create([{name:"アムステルダム"},{name:"ハーグ"},{name:"キューケンホフ"},{name:"ユトレヒト"},{name:"マーストリヒト"},{name:"その他"}])
#ヨーロッパ-ギリシャ
greece = europe.children.create(name:"ギリシャ")
greece.children.create([{name:"アテネ"},{name:"イラ"},{name:"カラマタ"},{name:"カランバカ"},{name:"カンディア"},{name:"ケフィロニア島"},{name:"サモス"},{name:"サントリーニ"},{name:"ザキントス"},{name:"スパルタ"},{name:"テッサロニキ"},{name:"デルフィ"},{name:"パトモス島"},{name:"ミコノス"},{name:"ロードス"},{name:"その他"}])
#ヨーロッパ-クロアチア
croatia = europe.children.create(name:"クロアチア")
croatia.children.create([{name:"ザグレブ"},{name:"プリトヴィツェ"},{name:"スプリット"},{name:"ドブロヴニク"},{name:"その他"}])
#ヨーロッパ-グリーンランド
greenland = europe.children.create(name:"グリーンランド")
greenland.children.create([{name:"イルイサット"},{name:"カンゲルルススアーク"},{name:"ナノタリック"},{name:"ナルサーク"},{name:"その他"}])
#ヨーロッパ-ジョージア
georgia = europe.children.create(name:"ジョージア")
georgia.children.create([{name:"トビリシ"},{name:"ステパンツミンダ"},{name:"キシスヘヴィ"},{name:"カヘティ地方"},{name:"その他"}])
#ヨーロッパ-スイス
switzerland = europe.children.create(name:"スイス")
switzerland.children.create([{name:"チューリッヒ"},{name:"サン・モリッツ"},{name:"ツェルマット"},{name:"ルツェルン"},{name:"ベルン"},{name:"ラウターブルンネン"},{name:"ジュネーブ"},{name:"グリンデルワルト"},{name:"テーシュ"},{name:"マイエンフェルト"},{name:"シャモニー"},{name:"トゥーン"},{name:"リッフェルベルク"},{name:"その他"}])
#ヨーロッパ-スウェーデン
sweden = europe.children.create(name:"スウェーデン")
sweden.children.create([{name:"カルマル"},{name:"キルナ"},{name:"ストックホルム"},{name:"ヘルシンボリ"},{name:"マルメ"},{name:"ユッカスヤルヴィ"},{name:"ヨーテボリ"},{name:"ルンド"},{name:"ヴィスビー"},{name:"その他"}])
#ヨーロッパ-スペイン
spain = europe.children.create(name:"スペイン")
spain.children.create([{name:"マラガ"},{name:"ミハス"},{name:"バルセロナ"},{name:"マドリード"},{name:"コルドバ"},{name:"グラナダ"},{name:"セビリア"},{name:"バレンシア"},{name:"コンスエグラ"},{name:"ビルバオ"},{name:"サンセバスチャン"},{name:"フリヒリアナ"},{name:"サンティアゴ・デ・コンポステラ"},{name:"イビサ(島)"},{name:"パルマ・デ・マヨルカ"},{name:"その他"}])
#ヨーロッパ-スロベニア
slovenia = europe.children.create(name:"スロベニア")
slovenia.children.create([{name:"ブレッド"},{name:"ボヒニ"},{name:"ポストイナ"},{name:"ポルトローシュ"},{name:"マリボル"},{name:"リュブリアーナ"},{name:"その他"}])
#ヨーロッパ-スロバキア
slovakia = europe.children.create(name:"スロバキア")
slovakia.children.create([{name:"コシツェ"},{name:"トレンチーン"},{name:"ニトラ"},{name:"ブラティスラバ"},{name:"ポプラド"},{name:"レヴォチャ"},{name:"その他"}])
#ヨーロッパ-チェコ
czech = europe.children.create(name:"チェコ")
czech.children.create([{name:"チェスキークルムロフ"},{name:"プラハ"},{name:"テルチ"},{name:"その他"}])
#ヨーロッパ-デンマーク
denmark = europe.children.create(name:"デンマーク")
denmark.children.create([{name:"コペンハーゲン"},{name:"その他"}])
#ヨーロッパ-ドイツ
germany = europe.children.create(name:"ドイツ")
germany.children.create([{name:"フランクフルト"},{name:"ケルン"},{name:"ヴェルツブルク"},{name:"シュトゥットガルト"},{name:"ミュンヘン"},{name:"ホーエンシュヴァンガウ"},{name:"ローテンブルク"},{name:"リューデスハイム"},{name:"ザンクト・ゴアール"},{name:"フュッセン"},{name:"ドレスデン"},{name:"ベルリン"},{name:"ディンケルズブール"},{name:"ネルトリンゲン"},{name:"デュッセルドルフ"},{name:"ブレーメン"},{name:"ハンブルグ"},{name:"ゴスラー"},{name:"その他"},])
#ヨーロッパ-ノルウェー
norway = europe.children.create(name:"ノルウェー")
norway.children.create([{name:"オスロ"},{name:"ベルゲン"},{name:"フロム"},{name:"ヴォス"},{name:"ラルダール"},{name:"その他"}])
#ヨーロッパ-ハンガリー
hungary = europe.children.create(name:"ハンガリー")
hungary.children.create([{name:"エゲルサローク"},{name:"デブレツェン"},{name:"バラトンフレド"},{name:"ブダペスト"},{name:"ミシュコルツ"},{name:"その他"}])
#ヨーロッパ-フィンランド
finland = europe.children.create(name:"フィンランド")
finland.children.create([{name:"ロバニエミ"},{name:"タンペレ"},{name:"ヘルシンキ"},{name:"サーリセルカ"},{name:"ナーンタリ"},{name:"トゥルク"},{name:"その他"}])
#ヨーロッパ-フランス
france = europe.children.create(name:"フランス")
france.children.create([{name:"パリ"},{name:"シャルトル"},{name:"シャモニー"},{name:"ニース"},{name:"アヴィニョン"},{name:"リヨン"},{name:"ストラスブール"},{name:"バイヨンヌ"},{name:"カルカソンヌ"},{name:"トゥールーズ"},{name:"ボルドー"},{name:"マルセイユ"},{name:"エクス・アン・プロヴァンス"},{name:"その他"}])
#ヨーロッパ-ベルギー
belgium = europe.children.create(name:"ベルギー")
belgium.children.create([{name:"アントワープ"},{name:"ブルージュ"},{name:"ブリュッセル"},{name:"ゲント"},{name:"デュルビュイ"},{name:"モダーヴ"},{name:"その他"}])
#ヨーロッパ-ポーランド
poland = europe.children.create(name:"ポーランド")
poland.children.create([{name:"ワルシャワ"},{name:"クラクフ"},{name:"ヴィエリチカ"},{name:"オシフィエンチム"},{name:"ヴロツワフ"},{name:"ポズナン"},{name:"その他"}])
#ヨーロッパ-ポルトガル
portugal = europe.children.create(name:"ポルトガル")
portugal.children.create([{name:"ポルト"},{name:"アヴェイロ"},{name:"コインブラ"},{name:"トマール"},{name:"ナザレ"},{name:"バターリャ"},{name:"オビドス"},{name:"ロカ岬"},{name:"リスボン"},{name:"シントラ"},{name:"アルコバサ"},{name:"ファティマ"},{name:"その他"}])
#ヨーロッパ-マケドニア
macedonia = europe.children.create(name:"マケドニア")
macedonia.children.create([{name:"オフリド"},{name:"スコピエ"},{name:"その他"}])
#ヨーロッパ-マルタ
malta = europe.children.create(name:"マルタ")
malta.children.create([{name:"ゴゾ島"},{name:"バレッタ"},{name:"その他"}])
#ヨーロッパ-モナコ
monaco = europe.children.create(name:"モナコ")
monaco.children.create([{name:"モンテカルロ"},{name:"その他"}])
#ヨーロッパ-モンテネグロ
montenegro = europe.children.create(name:"モンテネグロ")
montenegro.children.create([{name:"ブドヴァ"},{name:"コトル"},{name:"ポドゴリツァ"},{name:"その他"}])
#ヨーロッパ-ラトビア
latvia = europe.children.create(name:"ラトビア")
latvia.children.create([{name:"クルディーガ"},{name:"リガ"},{name:"その他"}])
#ヨーロッパ-リトアニア
lithuania = europe.children.create(name:"リトアニア")
lithuania.children.create([{name:"カウナス"},{name:"トラカイ"},{name:"ビリニュス"},{name:"その他"}])
#ヨーロッパ-リヒテンシュタイン
liechtenstein = europe.children.create(name:"リヒテンシュタイン")
liechtenstein.children.create([{name:"ファドゥーツ"},{name:"リヒテンシュタイン"},{name:"その他"}])
#ヨーロッパ-ルクセンブルク
luxembourg = europe.children.create(name:"ルクセンブルク")
luxembourg.children.create([{name:"エッシュ・シュル・アルゼット"},{name:"ルクセンブルク"},{name:"その他"}])
#ヨーロッパ-ルーマニア
romania = europe.children.create(name:"ルーマニア")
romania.children.create([{name:"ウズリナ"},{name:"オラデア"},{name:"コンスタンツァ"},{name:"サトゥマーレ"},{name:"シギショアラ"},{name:"シナイア"},{name:"シビウ"},{name:"ダネシュティ"},{name:"ティミショアラ"},{name:"トルチャ"},{name:"バカウ"},{name:"ブカレスト"},{name:"ブラショフ"},{name:"ブラン"},{name:"ヤシ"},{name:"その他"}])
#ヨーロッパ-ロシア
russia = europe.children.create(name:"ロシア")
russia.children.create([{name:"ウラジオストク"},{name:"ハバロフスク"},{name:"モスクワ"},{name:"サンクトペテルブルク"},{name:"ウラジーミル"},{name:"スズタリ"},{name:"ムルマンスク"},{name:"その他"}])

#中近東・アフリカ
middle_east_africa = Place.create(name:"中近東・アフリカ")
#中近東・アフリカ-アラブ首長国連邦
arab = middle_east_africa.children.create(name:"アラブ首長国連邦")
arab.children.create([{name:"アブダビ"},{name:"ドバイ"},{name:"その他"}])
#中近東・アフリカ-イスラエル
israel = middle_east_africa.children.create(name:"イスラエル")
israel.children.create([{name:"エルサレム"},{name:"テルアビブ"},{name:"その他"}])
#中近東・アフリカ-イラン
iran = middle_east_africa.children.create(name:"イラン")
iran.children.create([{name:"テヘラン"},{name:"その他"}])
#中近東・アフリカ-ウガンダ
uganda = middle_east_africa.children.create(name:"ウガンダ")
uganda.children.create([{name:"ブウィンディ原生国立公園"},{name:"クイーン・エリザベス国立公園"},{name:"キヒーヒ"},{name:"カンパラ"},{name:"その他"}])
#中近東・アフリカ-エジプト
egypt = middle_east_africa.children.create(name:"エジプト")
egypt.children.create([{name:"カイロ"},{name:"ギザ"},{name:"サッカラ"},{name:"アブシンベル"},{name:"アスワン"},{name:"ルクソール"},{name:"メンフィス"},{name:"ダハシュール"},{name:"その他"}])
#中近東・アフリカ-エチオピア
ethiopia = middle_east_africa.children.create(name:"エチオピア")
ethiopia.children.create([{name:"アディスアベバ"},{name:"その他"}])
#中近東・アフリカ-オマーン
oman = middle_east_africa.children.create(name:"オマーン")
oman.children.create([{name:"マスカット"},{name:"サラーラ"},{name:"その他"}])
#中近東・アフリカ-カタール
qatar = middle_east_africa.children.create(name:"カタール")
qatar.children.create([{name:"ドーハ"},{name:"その他"}])
#中近東・アフリカ-ケニア
kenya = middle_east_africa.children.create(name:"ケニア")
kenya.children.create([{name:"ナイロビ"},{name:"アンボセリ"},{name:"ナイバシャ湖"},{name:"ナクル湖"},{name:"アバーディア"},{name:"マサイマラ"},{name:"その他"}])
#中近東・アフリカ-ザンビア
zambia = middle_east_africa.children.create(name:"ガンビア")
zambia.children.create([{name:"リビングストン"},{name:"ルサカ"},{name:"その他"}])
#中近東・アフリカ-シリア
syria = middle_east_africa.children.create(name:"シリア")
syria.children.create([{name:"アレッポ"},{name:"ダマスカス"},{name:"その他"}])
#中近東・アフリカ-ジンバブエ
zimbabwe = middle_east_africa.children.create(name:"ジンバブエ")
zimbabwe.children.create([{name:"ハラーレ"},{name:"ビクトリアフォールズ"},{name:"その他"}])
#中近東・アフリカ-タンザニア
tanzania = middle_east_africa.children.create(name:"タンザニア")
tanzania.children.create([{name:"アルーシャ"},{name:"セレンゲティ"},{name:"ンゴロンゴロ"},{name:"ザンジバル"},{name:"その他"}])
#中近東・アフリカ-チュニジア
tunisia = middle_east_africa.children.create(name:"チュニジア")
tunisia.children.create([{name:"チュニス"},{name:"スース"},{name:"トズール"},{name:"クサールギレン"},{name:"マトマタ"},{name:"ケロアン"},{name:"カルタゴ"},{name:"シティ・ブ・サイド"},{name:"その他"}])
#中近東・アフリカ-トルコ
turkey = middle_east_africa.children.create(name:"トルコ")
turkey.children.create([{name:"イスタンブール"},{name:"サフランボル"},{name:"カッパドキア"},{name:"アンカラ"},{name:"パムッカレ"},{name:"クシャダス"},{name:"その他"}])
#中近東・アフリカ-ナミビア
namibia = middle_east_africa.children.create(name:"ナミビア")
namibia.children.create([{name:"ウィントフック"},{name:"セスリエム"},{name:"ウォルビスベイ"},{name:"その他"}])
#中近東・アフリカ-ボツワナ
botswana = middle_east_africa.children.create(name:"ボツワナ")
botswana.children.create([{name:"ハボローネ"},{name:"チョベ国立公園"},{name:"その他"}])
#中近東・アフリカ-マダガスカル
madagascar = middle_east_africa.children.create(name:"マダガスカル")
madagascar.children.create([{name:"ベコパカ"},{name:"アンダシベ"},{name:"アンツィラべ"},{name:"フォールドーファン"},{name:"モロンダバ"},{name:"アンタナナリボ"},{name:"その他"}])
#中近東・アフリカ-モロッコ
morocco = middle_east_africa.children.create(name:"モロッコ")
morocco.children.create([{name:"シェフシャウエン"},{name:"フェズ"},{name:"メルズーカ"},{name:"ワルザザード"},{name:"アイトベンハッドウ"},{name:"マラケシュ"},{name:"カサブランカ"},{name:"ブーマンダデス"},{name:"その他"}])
#中近東・アフリカ-ヨルダン
jordan = middle_east_africa.children.create(name:"ヨルダン")
jordan.children.create([{name:"アンマン"},{name:"死海"},{name:"マダバ"},{name:"ペトラ"},{name:"ワディラム"},{name:"その他"}])
#中近東・アフリカ-南アフリカ
southafrica = middle_east_africa.children.create(name:"南アフリカ")
southafrica.children.create([{name:"ヨハネスブルク"},{name:"ケープタウン"},{name:"プレトリア"},{name:"クルーガー国立公園隣接私営動物保護区"},{name:"その他"}])

#北米
north_america = Place.create(name:"北米")
#北米-アメリカ
america = north_america.children.create(name:"アメリカ")
america.children.create([{name:"サンフランシスコ"},{name:"ヨセミテ"},{name:"ラスベガス"},{name:"グランドキャニオン"},{name:"ペイジ"},{name:"ロサンゼルス"},{name:"ニューヨーク"},{name:"ボストン"},{name:"フィラデルフィア"},{name:"ワシントンD.C."},{name:"ヒューストン"},{name:"ダラス"},{name:"アンカレッジ"},{name:"デナリ"},{name:"フェアバンクス"},{name:"シアトル"},{name:"サンティエゴ"},{name:"オーランド"},{name:"アナハイム"},{name:"シカゴ"},{name:"マイアミ"},{name:"セドナ"},{name:"チナ温泉"},{name:"フラグスタッフ"},{name:"ポートランド"},{name:"デンバー"},{name:"その他"}])
#北米-カナダ
canada = north_america.children.create(name:"カナダ")
canada.children.create([{name:"イエローナイフ"},{name:"トロント"},{name:"ナイアガラ・フォールズ"},{name:"カルガリー"},{name:"バンフ"},{name:"モントリオール"},{name:"ケベックシティ"},{name:"プリンス・エドワード島"},{name:"バンクーバー"},{name:"ビクトリア"},{name:"キャベンディッシュ"},{name:"レイクルイーズ"},{name:"ヴァーノン"},{name:"ウィスラー"},{name:"ホワイトホース"},{name:"ジャスパー"},{name:"オタワ"},{name:"その他"}])
