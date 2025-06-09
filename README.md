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

### 2025/06/09

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

### 2025/05/14

- モデルに `Download\Stable-diffusion\NoobE\plumMix_v10.bat` を追加しました。
	- HyperDMD 利用時は `LCM DDIM` の組み合わせが良さそうでした。

### 2025/05/13

- モデルに `Download\Stable-diffusion\NoobE_Real\DivingIL_RealAsian_v20.bat` を追加しました。
	- HyperDMD 利用時は `LCM Beta` か `LCM DDIM` の組み合わせが良さそうでした。

### 2025/05/06

- 以下のモデルのバージョンを更新しました。
	- `Download\Stable-diffusion\NoobE\CottonIllustrious_v20.bat`
	- `Download\Stable-diffusion\NoobE\songMix_v32.bat`
- 以下のダウンロードに対応しました。
	- `Download\Lora\Noob_Bundle\songMixLeco.bat`
	- `Download\VAE\Sdxl\songVae_v10.bat`
	- `Download\Stable-diffusion\NoobE\lillyMix_v11.bat`
	- `Download\Stable-diffusion\NoobE\viviMix_v12.bat`

### 2025/05/04

- インストール時の reForge 上書きチェックに、A1111 と Forge も追加しました。

### 2025/04/25

- 使い方に解説いただいた記事『[新環境構築にEasyReforge 使ったから自動的に入るやつ全部解説する](https://note.com/kagami_kami/n/n79f46bc6147b)』へのリンクを追加しました。
- 以下モデルのバージョンを更新しました。
	- `Download\Stable-diffusion\NoobE\songMix_v30.bat`
- 以下 LoRA のダウンロードに対応しました。
	- `Download\Lora\NoobE_Char\Gqux_GQ_bull_v10.bat`

### 2025/04/20

- Hires. fix で `TypeError: 'NoneType' object is not iterable` が発生する不具合を修正しました。
- TIPO の動作が遅い不具合を修正しました。

### 2025/04/14

- `NegPiP` と `CD Tuner` のバージョンを、`Settings`-`Defaults` で起動状態を設定するバージョンまで巻き戻しました。
	- `NegPiP` 左のチェックボックスで有効/無効を切り替えてから、`Settings`-`Defaults` の `Apply` で保存します。
![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Troubleshoot/NegPipUi.webp)

### 2025/04/13

- [reForge 本家の更新は終了](https://github.com/Panchovix/stable-diffusion-webui-reForge/discussions/354) しました。
	- 先日の大規模更新で少し前のバージョンにてリビジョンを固定済みですので、新しい環境が出てくるまで Noob や Illustrious 用の環境としてあるがままをご利用ください。

### 2025/04/10

- インストール手順に `Microsoft Visual C++ Redistributable` のインストールを追加しました。

### 2025/04/09

- 特定の環境で `python setup.py bdist_wheel did not run successfully.` のエラーでインストールに失敗する問題に対処しました。

### 2025/04/08

- 最小ダウンロード構成で Tile と Inpaint のコントロールネットモデルをダウンロードするようにしました。
- 生成した画像を Hires. fix するボタン (`Create an upscale version of...`) が、設定を保存するまでエラーになる問題を修正しました。

### 2025/04/06

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/NoobInpaint.webp)

- 『[お手軽インペイント書き換え](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/NoobInpaint.webp)』のチートシートを追加しました。
- `reForge` のインストール方法変更やパッチを含む大規模な更新です。
	- `Update.bat` の初回実行が失敗しても、もう一度 `Update.bat` を実行すると正常に更新できる場合があります。
	- **更新後に問題がある場合は、`stable-diffusion-webui-reForge/venv/` をリネームで退避して `Update.bat` で再更新してみてください。**
- Geforce RTX 50x0 と SageAttention に対応しました。
	- グラフィックスドライバの更新が必要になる可能性があります。
- Hires. fix でモデルを変更できない不具合に仮対処しました。
- インストール後にオフラインで利用できるようにしました。
- 高速化オプションを指定した `Reforge_Fast.bat` を追加しました。
- コントロールネットの [Noob インペイントモデル](https://huggingface.co/Wenaka/NoobAI_XL_Inpainting_ControlNet_Full)を追加しました。
	- `Download\ControlNet\NoobE\NoobE_Inpaint.bat`
- ControlNet のプリプロセッサに `inpaint_only_noobai_xl+lama`, `inpaint_only_noobai_xl`, `inpaint_noobai_xl` を追加しました。
- コントロールネットのプリセットに `AnyTest`, `Kataragi_Inpaint`, `Noob_Inpaint`, `Noob_Tile` を追加しました。
- モデルのダウンロードに対応しました。
	- 新しい Illustrious 系モデルを Cfg1 高速運用する際には、`LCM` & `ResSolver` などサンプラー & スケジューラを色々試してみてください。
	- `Download\Stable-diffusion\NoobE\CatTower_v12.bat`
	- `Download\Stable-diffusion\NoobE\CottonIllustrious_v10.bat`
	- `Download\Stable-diffusion\NoobE\NovaAnime_v60.bat`
	- `Download\Stable-diffusion\NoobE\SmoothMix.bat`
	- `Download\Stable-diffusion\NoobE_Unique\NovaFurry_v50.bat`
- モデルのバージョンを更新しました。
	- `Download\Stable-diffusion\NoobE\LibrasIllustriousXL_v50.bat`
	- `Download\Stable-diffusion\NoobE\songMix_v22.bat`
	- `Download\Stable-diffusion\NoobE_Real\PornMasterPro_v25.bat`
	- `Download\Stable-diffusion\NoobE_Unique\PVCStyleModelMovable_v13a.bat`
	- `Download\Stable-diffusion\NoobV\CatTowerV_v17.bat`
	- `Download\Stable-diffusion\NoobV\HikariNoob_v121.bat`
	- `Download\Stable-diffusion\NoobV\ObsessionV_v11.bat`
	- `Download\Stable-diffusion\NoobV\WaiShuffleNoobV_v20.bat`
- ADetailer の検出モデルを追加しました。
	- `Download\adetailer\segm\panties_seg_v3a.bat`

### 2025/04/05

- 何事もなければ明日、不具合対策で更新を止めていた `reForge` のバージョンを大幅に引き上げます。
	- **互換性のない変更になる可能性がありますので、心配な方は更新前にバックアップを取る、別フォルダに新規インストールするなどの対策をしてください。**
	- 通常の状態で Geforce RTX 50x0 に対応する見込みです。

### 2025/03/17

- `Download\Stable-diffusion\NoobE\TanemoMix_v20.bat` を追加しました。
- `Download\Stable-diffusion\NoobE\CottonNoob_v20.bat` のバージョンを更新しました。

### 2025/03/13

- `Download/Stable-diffusion/NoobE/` にある `songMix_v15` のバージョンを更新しました。
	- 軽く `<lora:NoobV065sHyperDmd:1>` を試した範囲では、`RES Solver & SGM Uniform` か `LCM & DDIM`あたりがオススメでした。

### 2025/03/07

- [TrainTrain](https://github.com/hako-mikan/sd-webui-traintrain) と [SuperMerger](https://github.com/hako-mikan/sd-webui-supermerger) を使えるように `Forge.bat` を追加しました。
	- TrainTrain の ADDifT は 1分で差分 LoRA を学習できます（Geforce RTX 3060 12GB）。
		- 『[交替直接差分学習法ADDifT(Alternating Direct Difference Training)の解説](https://note.com/hakomikan/n/n716397e39d56)』
		- 『[ADDifTの実践1](https://note.com/hakomikan/n/n2a00c2bb39af)』
	- 学習した LoRA は SuperMerger でモデルにマージできます。

### 2025/03/06

- `Download/Stable-diffusion/NoobE/` にある `songMix_v14` のバージョンを更新しました。
	- HyperDmd Cfg1 で使用する際には、`LCM` サンプラー & `DDIM` スケジューラと組み合わせてください。
- `Download\adetailer\segm\AnzhcHead-seg.bat` と `Download\adetailer\segm\AnzhcHeadHair-seg.bat` のリンク切れを修正しました。

### 2025/03/02

- `Download/Stable-diffusion/NoobE` に [`AniKawa`](https://civitai.com/models/1282887?modelVersionId=1447392) を追加しました。

### 2025/02/28

- `Download/Stable-diffusion/NoobE` の [`songMix_v12`](https://civitai.com/models/1286421?modelVersionId=1455149) を [`songMix_v13`](https://civitai.com/models/1286421?modelVersionId=1472562) に更新しました。

### 2025/02/25

- `Download/Stable-diffusion/NoobE_Real` に `UncannyValley_v10_LcmPolyexp` モデルを追加しました。
	- HyperDmd との併用では `LCM` & `Polyexponential` の相性が良さげでした。

### 2025/02/24

- スタイルで適用するクォリティタグを [NoobAI-XL User Manual](https://d0xb9r3fg5h.feishu.cn/docx/YpOQdtHTDoetcZxIO9fc33onnee) 準拠にしました。
	- `very awa, masterpiece, best quality, year 2024, newest, highres, absurdres, general, safe # explicit`（general は NoobAI、safe は TIPO のレーティングです）
	- スタイルを編集していた場合は巻き戻ります。お手数ですが `stable-diffusion-webui-reForge\sytles.csv` の横にある日付付きバックアップからコピペで復元してください。
- `Download/Stable-diffusion/NoobE` に [`songMix_v12`](https://civitai.com/models/1286421?modelVersionId=1455149) モデルを追加しました。
- 拡張機能に [sd-webui-pnginfo-beautify](https://github.com/bluelovers/sd-webui-pnginfo-beautify) を追加しました。

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/PngInfo.webp)

### 2025/02/23

- Geforce RTX 50x0 系を運良く入手できた方のための `Reforge_RTX50x0_PipTorch260Cu128.bat` を用意しました。
	- [PyTorch 2.6.0 CUDA 12.8 の torch と torchvision](https://huggingface.co/w-e-w/torch-2.6.0-cu128.nv) をインストールします。
	- **NVIDIA グラフィックスドライバのバージョンを `570.65` 以上にする必要があります。**
	- **私は Geforce RTX 50x0 を所持していないため、動作確認はできていませんが、Geforce RTX 3060 12GB ではとりあえず画像を生成できています。**  
	![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/Torch260Cuda128.png)
	- **[PyTorch 2.6.0 では ADetailer が動作しない問題があるそうです（3060 環境でも再現）。](https://note.com/198619891990/n/n609b398d7de2)**
	- 今のところは `Update.bat` 実行時にバージョンが巻き戻りますので、再実行してください。

### 2025/02/22

- ForgeCoupleによる 2枚目の猫の日画像を 1枚目のように調整する手順です。
	- [Twitter](https://x.com/Zuntan03/status/1893213352060416153)、[pixiv](https://www.pixiv.net/artworks/127508681)

|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/CatDay_0.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/CatDay_1.webp)|
|:-:|:-:|

### 2025/02/21

- 『無料の [FramePlanner](https://frameplanner-e5569.web.app) で生成画像にセリフ付け』のチートシートを追加しました。

|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/FramePlanner_0.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/FramePlanner_1.webp)|
|:-:|:-:|

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/FramePlanner.webp)

### 2025/02/20

- `CottonNoob_v10` モデルと、マンガ調にする `DoujinshiBooba` のダウンロードに対応しました。

とても簡単にセリフを付けられる [FramePlanner](https://frameplanner-e5569.web.app/) を [お試し](https://www.pixiv.net/artworks/127444721)。

[![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/4koma_w.webp)](https://www.pixiv.net/artworks/127444721)

### 2025/02/17

- [`DungeonSquadStyle_v30`](https://civitai.com/models/486237?modelVersionId=1399376) の [出力例](https://www.pixiv.net/artworks/127330900) です。
	- [リンク先](https://www.pixiv.net/artworks/127330900) のオリジナルサイズ画像を `PNG Info` にドラッグ＆ドロップすると、生成設定を確認できます。

|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/pixelart_0_h.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/pixelart_1_h.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/pixelart_2_h.webp)|![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/pixelart_3_h.webp)|
|:-:|:-:|:-:|:-:|

### 2025/02/16

-  NSFW なシチュエーションやプロンプトの相談に使えるローカル LLM チャットに、`MinstralNemoJaRp_v02` を追加しました。
	- ロールプレイモデルのため会話が多くなりがちですが、プロンプト指示である程度抑えられます。
	- 会話内容への制約が緩い気がします。
- `Download/Stable-diffusion/NoobE` にアニメモデルの [`AniKawa`](https://huggingface.co/Qnuk/Illustrious_Models_AniKawaXL) を追加しました。
- `Download/Lora/NoobE_Style` にドット絵スタイルの [`DungeonSquadStyle_v30`](https://civitai.com/models/486237?modelVersionId=1399376) を追加しました。
- [`MatureRitual_v03e`](https://civitai.com/models/994401?modelVersionId=1345769) を [`MatureRitual_v04`](https://civitai.com/models/994401?modelVersionId=1418875) に更新しました。
- Git がインストールされていない環境でインストールに失敗する不具合を修正しました。

### 2025/02/13

- NSFW なシチュエーションやプロンプトの相談に使える、ローカル LLM チャットを追加しました。
	- 画像を生成しながらチャットする場合は、`Llm/7GB_LumimaidMagnum_v4_Cpu.bat` や `Llm/4GB_BerghofNsfw_Cpu.bat` をご利用ください。
	- 画像を生成せずにチャットする場合は、`Llm/7GB_LumimaidMagnum_v4_Gpu.bat` や `Llm/4GB_BerghofNsfw_Gpu.bat` をご利用ください。
	- 倫理面へのこだわりが `LumimaidMagnum_v4` と `BerghofNsfw` で異なるようですので、話題に合わせて使い分けてください。
	- `*.gguf` ファイルを `Llm/99_ModelDragAndDrop_Cpu.bat` や `Llm/99_ModelDragAndDrop_Gpu.bat` にドラッグ＆ドロップすることで、お好みのモデルを利用できます。

### 2025/02/12

- reForge の最新版でランタイムエラーが発生するようですので、[昨日のリビジョン](https://github.com/Panchovix/stable-diffusion-webui-reForge/commit/8ac78f65c97908a25c3f47b5311cc7268ff79eea) に固定しました。
	- `RuntimeError: config[i] == get()->name() INTERNAL ASSERT FAILED at "..\c10\cuda\CUDAAllocatorConfig.cpp":229, please report a bug to PyTorch. Allocator backend parsed at runtime != allocator backend parsed at load time`

### 2025/02/09

- 生成画像を自動更新して表示する `GenImageViewer.bat` を追加しました。
	- `png` で生成する必要があります。
- TIPO 用の場所指定ワイルドカード `__tipo_location__` を追加しました。
- 生成画像のフォーマットを `webp` から `png` に変更しました。

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/log/2502/location.webp)

### 2025/02/06

- プロンプトなどのメタ情報を残しながら `*.jpg` や `*.webp` に変換できる、[SdImageDiet](https://github.com/nekotodance/SdImageDiet) に対応しました。
	- `SdImageDiet.bat` を実行すると使えます。

### 2025/02/05

- 『TIPO で好みの画像を無限生成 複数キャラ編』のチートシートを追加しました。

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/TipoWildcardMulti.webp)

### 2025/02/04

- `buildin` の `sd-webui-lora-block-weight` が削除されたのに伴い `hako-mikan` をインストールするようにしました。
- `sd-webui-negpip`, `sd-webui-cd-tuner` のチェック状態が保存されない問題への対処のために、
- 不具合が修正されたので、`sd-forge-couple` の最新版を利用するように戻しました。

### 2025/02/03

- 『TIPO で好みの画像を無限生成』のチートシートを追加しました。
	- noob_1girl 画像からのキャラのプロンプトの取得は、ファイル名よりも PNG Info などで画像のメタ情報から取得したほうが楽です。
- 更新で編集したスタイルが巻き戻った場合は、stable-diffusion-webui-reForge\sytles.csv の横にある日付付きバックアップファイルからコピペして復元してください。

以下はチートシート画像内のテキスト欄の内容です。

モデルは矛盾のある TIPO プロンプトでも絵が崩れにくい NoobE 系モデルがおすすめです。  
右のスタイル欄で 『TIPO 1girl play [Sample] 📋』 を選択して 📋でサンプルプロンプトを貼り付けて TIPO を『有効化』して生成してみてください。

`<lora:NoobV065sHyperDmd:1>1girl, __tipo_1girl__, __tipo_play__, solo, masterpiece, newest, absurdres, highres, explicit,`  
↑ 『`TIPO 1girl play [Sample] 📋`』 `Model/wildcards/` にある `tipo_1girl.txt` と `tipo_play.txt` によるサンプルです。  
`tipo_1girl.txt` と `tipo_play.txt` の組み合わせから、TIPO によるプロンプト補完で幅広い画像が生成されます。

----
`<lora:NoobV065sHyperDmd:1>1girl, __1girl__, __play__, solo, masterpiece, newest, absurdres, highres, explicit,`  
↑ 『`TIPO 1girl play 📋`』 `Model/wildcards/` にある `1girl.txt` と `play.txt` に、好みのキャラとプレイのプロンプトを追加します。  
`1girl.txt` と `play.txt` を自分用に編集することで、お好みの画像を無限に生成できるようになります。 

`1girl.txt` は  `Sample/noob_1girl.bat` を実行してDLされた画像のファイル名や生成情報から、知っているキャラを `tipo_1girl.txt` を参考にしつつ追加します。  
作品名などのカッコ `(` `)` の前には `\`（バックスラッシュまたは円マーク）が必要 `\(` `\)`ですので、`PNG Info` などで生成情報からコピペしたほうが荒くです。

`tipo_1girl.txt` の最初のように LoRA のキャラ追加もできます。  
`Download\Lora\NoobE_Char\Medalist_HikaruKamisaki_v10.bat` で LoRA をダウンロード して、行頭の `#` を削除してコメントを解除すれば LoRA のキャラを試せます。

`2girls, {2$$__1girl__}, yuri` などとすることで、打率は落ちますがランダムな 2 キャラの組み合わせもできます。

----
`play.txt` は好きなプレイのプロンプトを、`tipo_play.txt` や気に入った画像などを参考にしつつ追加します。  
ネット上の好みのメタ情報付き画像から、キーとなるプロンプトを追加することもできます。

TIPO で補完する前提ですので、細かなプロンプトは不要です。  
こだわりのプロンプトを積み上げることもできますが、TIPO による変化の幅は狭まります（が、キャラが変わるだけでも新鮮です）。

`1girl.txt` や `play.txt` とは別のテキストファイルを用意して、使い分けたり組み合わせたりできます。

`(anime, anime coloring, anime screenshot: 1.2)`  
画風はモデルを差し替えたり、プロンプトで補助したりで変更できます。

----
`background, greyscale, monochrome, hair, eyes, multiple view, censor, pubic, testicles, pointy, elf`

`background`: `simple background` や `white background` を防ぐ  
`greyscale`, `monochrome`: モノクロ防止  
`hair, eyes`: 髪や目の色はキャラプロンプトで決める  
`multiple view`: コマ割り防止、`[1-5]koma` なんかもよい  
`censor, pubic, testicles, pointy, elf`: 勝手に修正や毛や玉やエルフ耳を追加しない

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyReforge/Sample/CheatSheet/TipoWildcard.webp)

[過去の更新内容](https://github.com/Zuntan03/EasyReforge/wiki/%E9%81%8E%E5%8E%BB%E3%81%AE%E6%9B%B4%E6%96%B0%E5%86%85%E5%AE%B9)（参考画像もこちらにあります。）


## ドキュメント

- [トラブルシューティング](https://github.com/Zuntan03/EasyReforge/wiki/%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)
- [過去の更新内容](https://github.com/Zuntan03/EasyReforge/wiki/%E9%81%8E%E5%8E%BB%E3%81%AE%E6%9B%B4%E6%96%B0%E5%86%85%E5%AE%B9)

## ライセンス

このリポジトリの内容は [MIT License](./LICENSE.txt) です。
