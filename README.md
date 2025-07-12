# EasyReforge

[reForge](https://github.com/Panchovix/stable-diffusion-webui-reForge) でお手軽に高速画像生成する EasyReforge です。  
[NoobAi](https://civitai.com/models/833294) の Epsilon-Prediction 版 ( **NoobE** ) と V-Prediction 版 ( **NoobV** ) を主に扱います。

- ワンクリックインストール
- Geforce RTX 3060 VRAM 12GB で FullHD を 10秒で生成するプリセット
- 便利な拡張機能一式を組み込み
- Civitai キー設定でモデル・LoRA・Wildcard・ADetailer モデルなどリソース一式をダウンロード

わからないことや不具合や要望がありましたら、 [@Zuntan03](https://x.com/Zuntan03) や [Issues](https://github.com/Zuntan03/EasyReforge/issues) にお知らせください。

## インストール方法

1.  [EasyReforgeInstaller.bat](https://github.com/Zuntan03/EasyReforge/raw/main/EasyReforge/EasyReforgeInstaller.bat?ver=1) を右クリックから保存します。
	- NVIDIA GPU の Windows PC、20GB 以上の空きストレージ、PC の管理者権限、アバストなどの Windows Diffender でないウィルスチェック無効化、VPN の無効化が必要です。
2. `C:/EasyReforge/` などの浅いパスのインストール先の **空フォルダ** で、`EasyReforgeInstaller.bat` をダブルクリックして実行します。
	- **`WindowsによってPCが保護されました` と表示されたら、`詳細表示` から `実行` します。**
3. `動作に必要なモデルなどをダウンロードします。よろしいですか？ [y/n]（空欄なら y）` で `Enter` します。
4. インストール先の `EasyReforge/vc_redist.x64.exe` で、`Microsoft Visual C++ Redistributable` をインストールします。
5. インストールが問題なく終了したら [使い方](https://github.com/Zuntan03/EasyReforge/#使い方) へ。

**インストールで問題が発生したら『[インストールのトラブルシューティング](https://github.com/Zuntan03/EasyReforge/wiki/%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0#%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%AE%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)』へ。**

## 使い方

解説いただいた記事

- [新環境構築にEasyReforge 使ったから自動的に入るやつ全部解説する](https://note.com/kagami_kami/n/n79f46bc6147b)

|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/Reforge_00_Basic.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/Reforge_02_VPred.webp)|
|:-:|:-:|
|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/Txt2ImgInpaint.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/Reforge_01_Tipo.webp)|
|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/TipoWildcard.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/TipoWildcardMulti.webp)|
|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/FramePlanner.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/NoobInpaint.webp)|
|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2507/anytest.webp)||

### 基本操作

- EasyReforge インストール先にある `Reforge.bat` で起動します。
	- 右側の `Generate` ボタンで画像を生成します。
		- 画像は `OutputReforge\txt2img-images` に保存されます。
			- `InfiniteImageBrowsing.bat` で生成した画像を確認できます。
	- プロンプト欄に入力するタグは [Danbooru](https://danbooru.donmai.us/) の左上にある `Search` 欄で、**日本語で検索して調べます** 。
	- `Generate` ボタン下のスタイル設定欄で `DMD2[4]: LCM, SGM Uniform 📋↙` を選択して `📋` と `↙` で基本的な設定を適用できます。
		- **Latent 系 Hires. fix x1.5 の利用が前提のプリセットです。**
		- プロンプト末尾の safe は TIPO 用のレーティング指定です。  
		TIPO を利用しない場合は削除してください（金庫が生成される場合があります）。
		- 高速化 LoRA なしの通常の設定を利用したい場合は `Normal[28+]: Euler a, Normal 📋↙️` を適用します。
	- プロンプト入力欄下の `TIPO` を開いて `Enabled` を有効にすると、入力済みのプロンプトから関連するプロンプトを追加して生成します（NSFW で特に強力です）。
		- 評価の高い NSFW を試すには `safe` を `explicit` に書き換えます。
	- 画像生成で問題が発生したら『[画像生成のトラブルシューティング](https://github.com/Zuntan03/EasyReforge/wiki/%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0#%E7%94%BB%E5%83%8F%E7%94%9F%E6%88%90%E3%81%AE%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)』へ。
- **起動時の設定状態は `Settings` の左下にある `Other` - `Defaults` で変更できます。**
	- `View changes` で変更内容を確認して、`Apply` で保存します。
	- 設定がよくわからなくなったら `stable-diffusion-webui-reForge/` にある `config.json`, `ui-config.json`, `styles.csv` を退避してから `EasyReforge.bat` を実行すると、初期状態にリセットします。
- VRAM の少ない GPU では画面左下の `Never OOM Integrated` を有効にして、`Low VRAM` などを指定すると動作が快適になる可能性があります。
- UI の日本語併記を止めるには `Settings` にある `Bilingual Localization` の `Localization file` を `None` にして、`Apply settings` と `Reload UI` をしてください。
- 起動時にコマンドラインオプションを指定したい場合は `Reforge_ArgSample_DarkTheme.bat` をコピーして、ファイル内の `--theme dark` を書き換えます。
- **`Update.bat` で EasyReforge を更新します。**
	- 更新で問題が発生したら『[更新のトラブルシューティング](https://github.com/Zuntan03/EasyReforge/wiki/%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0#%E6%9B%B4%E6%96%B0%E3%81%AE%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)』へ。

### 追加データのダウンロード

- `Settings` の左上 `Search...` 欄に `api` と入力すると `[Wiki] API key for authenticating with Civitai.` の設定が表示されます。  
	- [Wiki](https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper/wiki/Civitai-API-Key) のリンク先をブラウザで翻訳して、内容にそって API Key を取得して、この設定欄にコピペしてから上の `Apply settings` で保存します。
- Civitai キーを設定したら `NoobAiEpsilonPred_StandardModels.bat` でモデルなどを一式ダウンロードします。
	- モデルのダウンロードが不要な場合は `NoobAiEpsilonPred_Standard.bat` を実行します。
- 追加データをダウンロードするとキャラやスタイルのワイルドカードが使えます。
	- `__NsfwPony/char__`: キャラワイルドカード
	- `__Booru1girl__`: 女性のみキャラワイルドカード
	- `__MixedStyle__`: 混合スタイルワイルドカード
	- `<lora:NoobEStylesDump:1> __NoobEStylesDump__`: スタイル LoRA とトリガーワイルドカード。V-Pred なら NoobE を NoobV にします。
	- `<lora:NoobEStylesCollection:1> __NoobStylesCollection__`: スタイル LoRA とトリガーワイルドカード。V-Pred なら NoobE を NoobV にします。
- `Download/` 直下の `bat` では追加データを一式ダウンロードできます。
	- `NoobAiEpsilonPred`, `NoobAiVPred`: [NoobAi](https://civitai.com/models/833294) の Epsilon-Prediction 版、V-Prediction 版の関連ファイルをダウンロードします。最初は扱いが簡単な `NoobAiEpsilonPred` がオススメです。
	- `Minimum`: 画像生成ができる最低限の関連ファイルをダウンロードします。`Minimum` のみ、下記の Civitai キー設定をしなくてもダウンロードできます。
	- `Standard`: `Minimum` に加えて、モデル以外の標準的な関連ファイルをダウンロードします。LoRA や ADetailer 検出モデルや Wildcard など、容量に対して効果が大きいモノが多いため、Civitai キーを登録してのダウンロードを推奨します。
	- `StandardModels`: `Standard` に加えて、合計 100GB 以下の定番オススメモデルをダウンロードします。
	- `All`: すべての関連ファイルをダウンロードします。
	- サブフォルダの `bat` で個別のダウンロードもできます。
	- モデルや LoRA は日々新しいモノが公開されますので、[Civitai](https://civitai.com/) で気になったモノを `Civitai Helper` でダウンロードしたり、`Civitai Helper Browser` で直接ダウンロードしてください（Civitai キー設定が必要）。

### 他の環境とのリソース共有

- モデルや LoRA は `Model/` 以下に保存します。
- 各サブフォルダの `LinkInput.bat` と `LinkOutput.bat` でモデルや LoRA を共有できます。
	- EasyReforge から他の環境のモデルや LoRA を参照したい場合は、`LinkInput.bat` を実行してください。
	- EasyReforge のモデルや LoRA を他の環境から参照したい場合は、`LinkOutput.bat` を実行してください。

### V-Prediction を試す

**NoobAI の V-Prediction 版は開発中です。**  
**現時点では V-Prediction & ZTSNR に対応した高速化 LoRA も存在しないため、強引な対応により品質が落ちています（が、その代わりに 3060 で FullHD を 10秒で生成できます）。**

[追加データのダウンロード](https://github.com/Zuntan03/EasyReforge/#追加データのダウンロード) で Civitai キーを設定してから、`Download/` にある `NoobAiVPred_StandardModels.bat` で V-Pred のモデルや LoRA をダウンロードします。

1. 左下にある `Advanced Model Sampling for reForge` を開いて `Enable Advanced Model Sampling` を有効にします。
	- V-Pred や ZTSNR 自動判定機能は派生モデルで正常に動作しない場合があるようですのでご注意ください。
1. `DMD2[4+]: Euler a CFG++, Beta 📋↙` を選択して、`📋` と `↙` で適用します。
	- モデルによっては `DMD2[4]: LCM, SGM Uniform 📋↙` の設定のままでも生成できます。
2. `__Booru1girl__ official logo, upper body` や `__NsfwPony/char__ official logo, upper body` で生成すると、ロゴなどで学習精度の高さを確認できます。

E-Pred に戻すときも同様です。

1. `DMD2[4]: LCM, SGM Uniform 📋↙` を選択して、`📋` と `↙` で適用します。
1. 左下にある `Advanced Model Sampling for reForge` を開いて `Enable Advanced Model Sampling` を無効にします。

## 最近の更新内容

- **更新で編集したスタイルが巻き戻った場合は、`stable-diffusion-webui-reForge\sytles.csv` の横にある日付付きバックアップファイルからコピペして復元してください。**

### 2025/07/12

- `Download\Lora\Illu_Char\Takopī_no_Genzai.bat` を追加しました。

### 2025/07/06

- ControlNet の AnyTest プリセットで `Sdxl/AnyTest_Dim64_v10` を使用するように変更しました。
	- EasyReforge の高速生成環境では LLLite ControlNet の AnyTest と相性が良いようで、Animagine や Pony に依存していない旧バージョンで打率が高く見えています。
		- [`anytest?_illustrious2`](https://huggingface.co/2vXpSwA7/iroiro-lora/commit/bb4a39142275ac975ae4e6a64d1df218f672e0f0) の LLLite 版がリリースされれば、そちらのほうが打率が高くなる可能性があります。
- スタイルのプリセットに `Illu HyDmd[4]: LCM, Beta` を追加しました。
	- **編集したスタイルが Update.bat で巻き戻ります。**  
	**スタイルを編集していた場合は `stable-diffusion-webui-reForge\sytles.csv` の横にある日付付きバックアップファイルからコピペして復元してください。**
- 以下のモデルを追加しました。
	- `Download\ControlNet\Sdxl\AnyTest_Dim64_v10.bat`
	- `Download\Stable-diffusion\NoobE\SmoothMixNoob_v30.bat`
	- `Download\Stable-diffusion\Illu\SmoothMixIlluNoob_v30.bat`

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2507/anytest.webp)

### 2025/06/15

- モデルや LoRA のダウンロード bat の追加や更新をしました。
	- `Download\Stable-diffusion\Illu\botan_v30.bat`
	- `Download\Stable-diffusion\Illu\copycatIllu_v70.bat`
	- `Download\Stable-diffusion\Illu\OneObsession_v14.bat`
	- `Download\Stable-diffusion\NoobE\LuminarQMixE_v71.bat`
	- `Download\Stable-diffusion\NoobV\LuminarQMixV_v71.bat`
	- `Download\Stable-diffusion\RowWeiV\RouWeiV_v08.bat`
	- `Download\Lora\Illu_Nsfw\OneFingerSelfieChallenge_Illu.bat`
- アップスケーラのモデルを 4種追加しました。  
`Download\All\ESRGAN.bat` ですべてダウンロードできます。
	- `Download\ESRGAN\2x-AnimeSharpV4_RCAN.bat`
	- `Download\ESRGAN\2x-AnimeSharpV4_Fast_RCAN_PU.bat`
	- `Download\ESRGAN\4x-UltraSharpV2.bat`
	- `Download\ESRGAN\4x-UltraSharpV2_Lite.bat`

### 2025/06/09

- ADetailer 用モデルの `Download\adetailer\segm\99coins_anime_girl_face_m_seg.bat` を追加しました。
- `sageattention` のために `torch` のバージョンを `2.7.0` から `2.7.1` に上げました。

### 2025/06/08

- 以下の Illustrious 系モデルのダウンロードに対応しました。  
`Download/Stable-diffusion/Illu/*.bat` でダウンロードできます。  
`Download/All/Stable-diffusion_Illu.bat` でまとめてダウンロードできます。
	- [`botan_v20.bat`](https://huggingface.co/KKTT8823/botan_illustrious)
	- [`copycatIllu_v60.bat`](https://huggingface.co/calculater/copycat-illustrious)
	- [`dupliCatFlat_v10.bat`](https://huggingface.co/calculater/dupli-cat_flat)
	- [`illustrious_v20.bat`](https://huggingface.co/OnomaAIResearch/Illustrious-XL-v2.0)
	- [`Quillworks_v15.bat`](https://huggingface.co/Shakker-Labs/Illustrious-Quillworks-V15)
	- [`songMix_v34.bat`](https://huggingface.co/yyy1026/songMix)
	- [`TanemoMix_v40.bat`](https://civitai.com/models/1297977?modelVersionId=1754256)
	- [`WaiNsfw_v14.bat`](https://civitai.com/models/827184?modelVersionId=1761560)
	- [`OneObsession_v13.bat`](https://civitai.com/models/1318945?modelVersionId=1840942)
- 以下の NoobE 系モデルのダウンロードに対応しました。  
	- [`Download\Stable-diffusion\NoobE\LuminarQMixE_v70.bat`](https://civitai.com/models/1616309?modelVersionId=1829221)
	- [`Download\Stable-diffusion\NoobE_Real\Featureless25DMix_v20.bat`](https://civitai.com/models/1133674?modelVersionId=1795934)
- 以下の NoobV 系モデルのダウンロードに対応しました。  
`Download/Stable-diffusion/NoobV/*.bat` でダウンロードできます。
	- [`CottonNoob_v40.bat`](https://civitai.com/models/1259226?modelVersionId=1830361)
	- [`LuminarQMixV_v70.bat`](https://civitai.com/models/1616309?modelVersionId=1829237)
- 以下の RouWeiE 系モデルのダウンロードに対応しました。  
`Download/Stable-diffusion/RowWeiE/*.bat` でダウンロードできます。
	- [`CalicoCatTower_v20.bat`](https://civitai.com/models/1294336?modelVersionId=1860525)
	- [`RouWeiE_v08.bat`](https://civitai.com/models/950531?modelVersionId=1832460)
- ADetailer モデルの [Anime NSFW Detection](https://civitai.com/models/1313556?modelVersionId=1863248) のダウンロードに対応しました。
	- `Download\adetailer\segm\AnimeNsfw_v40.bat`
- [`ReshapeBodyLeco`](https://huggingface.co/yyy1026/songMix/blob/main/ReshapedBody_LECO/ReadMe.txt) と [`AntiNoiseLeco`](https://huggingface.co/yyy1026/songMix/blob/main/AntiNoise_LECO/ReadMe.txt) のダウンロードに対応しました。
	- `Download\Lora\Noob_Bundle\songMixLeco.bat`
- 生成画像の最大サイズを `2048px` から `4096px` に増やしました。

#### [過去の更新内容](https://github.com/Zuntan03/EasyReforge/wiki/%E9%81%8E%E5%8E%BB%E3%81%AE%E6%9B%B4%E6%96%B0%E5%86%85%E5%AE%B9)（参考画像もこちらにあります。）

## ドキュメント

- [トラブルシューティング](https://github.com/Zuntan03/EasyReforge/wiki/%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)
- [過去の更新内容](https://github.com/Zuntan03/EasyReforge/wiki/%E9%81%8E%E5%8E%BB%E3%81%AE%E6%9B%B4%E6%96%B0%E5%86%85%E5%AE%B9)

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。
