import json
import os
import sys


class ReforgeUiConfig:
    DEBUG_MODE = False

    def __init__(self, cfg_path):
        self.updaters = {
            "0.0.0": self.update_0_0_0,
            "0.1.0": self.update_0_1_0,
            "0.1.1": self.update_0_1_1,
            "0.1.2": self.update_0_1_2,
            "0.1.3": self.update_0_1_3,
            "0.1.4": self.update_0_1_4,
            "0.1.5": self.update_0_1_5,
            "0.1.6": self.update_0_1_6,
            "0.1.7": self.update_0_1_7,
            "0.1.8": self.update_0_1_8,
            "0.1.9": self.update_0_1_9,
        }

        if not os.path.exists(cfg_path):
            with open(cfg_path, "w", encoding="utf-8") as f:  # BOM 不可
                json.dump(
                    {},
                    f,
                )

        with open(cfg_path, "r+", encoding="utf-8") as f:
            cfg = json.load(f)
            if "easy_reforge_ui-config_version" not in cfg:  # ファイル生成なし対策
                cfg["easy_reforge_ui-config_version"] = "0.0.0"

            if self.DEBUG_MODE:
                cfg["easy_reforge_ui-config_version"] = "0.0.0"

            if self.update(cfg):
                f.seek(0)
                json.dump(cfg, f, indent=4)
                f.truncate()

    def update(self, cfg):
        version = cfg["easy_reforge_ui-config_version"]
        if version not in self.updaters:
            return False
        self.updaters[version](cfg)
        self.update(cfg)
        return True

    def update_0_0_0(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.0"

        # cfg["txt2img/Prompt/value"] = (
        #     "1girl, rem \\(re:zero\\), re:zero kara hajimeru isekai seikatsu,\nofficial style,\nsanta costume, indoors,"
        # )
        # cfg["txt2img/Styles/value"] = ["🌟quality", "🚀dmd2XL4", "💬safe"]

        cfg["txt2img/Batch count/maximum"] = 999
        cfg["txt2img/Batch size/maximum"] = 16

        cfg["txt2img/Hires. fix/value"] = True
        cfg["txt2img/Upscaler/value"] = "Latent (nearest-exact)"
        cfg["txt2img/Denoising strength/value"] = 0.6
        cfg["txt2img/Upscale by/value"] = 1.5

        cfg["txt2img/Width/value"] = 896
        cfg["txt2img/Height/value"] = 1152
        cfg["txt2img/CFG Scale/value"] = 1.0

        cfg["customscript/sampler.py/txt2img/Sampling method/value"] = "LCM"
        cfg["customscript/sampler.py/txt2img/Schedule type/value"] = "SGM Uniform"
        cfg["customscript/sampler.py/txt2img/Sampling steps/value"] = 4

        cfg["customscript/xyz_grid.py/txt2img/Include Sub Grids/value"] = True

        cfg["customscript/tipo.py/txt2img/Prompt Format/value"] = "tag only (DTG mode)"
        cfg["customscript/tipo.py/txt2img/Seed for upsampling tags/value"] = 0
        cfg["customscript/tipo.py/txt2img/Use CPU (GGUF)/value"] = True
        cfg["customscript/tipo.py/txt2img/Ban tags/value"] = "background, greyscale, monochrome"

        # cfg["customscript/dynamic_prompting.py/txt2img/Fixed seed/value"] = True
        cfg["customscript/negpip.py/txt2img/NegPiP/value"] = True

        cfg["customscript/sigmas_script.py/txt2img/Merge Mode/value"] = "Multiply"
        cfg["customscript/sigmas_script.py/txt2img/Multiplication Factor/value"] = 2.0

        cfg["txt2img/ADetailer detector/value"] = "AnzhcFace-v2-768MS-seg.pt"
        cfg["txt2img/ADetailer detector 2nd/value"] = "PitHandDetailer-v1b-seg.pt"
        cfg["txt2img/ADetailer detector 3rd/value"] = "AnzhcEyes-seg.pt"
        cfg["txt2img/ADetailer detector 4th/value"] = "AnzhcBreasts-v1-1024-seg.pt"
        cfg["txt2img/Enable this tab (2nd)/value"] = False
        cfg["txt2img/Enable this tab (3rd)/value"] = False
        cfg["txt2img/Enable this tab (4th)/value"] = False

    def update_0_1_0(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.1"

        # cfg["customscript/tipo.py/txt2img/Use CPU (GGUF)/value"] = False
        cfg["customscript/dynamic_prompting.py/txt2img/Fixed seed/value"] = False

        cfg["txt2img/Prompt/value"] = (
            "1girl, rem \\(re:zero\\), re:zero kara hajimeru isekai seikatsu,\nofficial style,\nsanta costume, indoors,\n<lora:NoobV065sHyperDmd:1> masterpiece, best quality, very aesthetic, absurdres, newest, safe\n# 起動時の設定を変更したい場合は、設定を変更して Settings - Defaults の Apply"
        )

        cfg["txt2img/Negative prompt/value"] = "bad anatomy, worst quality, low quality"
        cfg["txt2img/Styles/value"] = []

    def update_0_1_1(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.2"

        cfg["img2img/Width/value"] = 1344
        cfg["img2img/Height/value"] = 1728
        cfg["img2img/CFG Scale/value"] = 1.0

        cfg["customscript/sampler.py/img2img/Sampling method/value"] = "LCM"
        cfg["customscript/sampler.py/img2img/Schedule type/value"] = "SGM Uniform"
        cfg["customscript/sampler.py/img2img/Sampling steps/value"] = 4
        cfg["img2img/Denoising strength/value"] = 0.6

    def update_0_1_2(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.3"

        cfg["customscript/lora_block_weight.py/txt2img/Active/value"] = True

    def update_0_1_3(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.4"

        cfg["customscript/tipo.py/txt2img/Use CPU (GGUF)/value"] = True  # GPU ではシードの再現性がなくなる

    def update_0_1_4(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.5"

        cfg["tagger/Interrogator/value"] = "WD EVA02-Large Tagger v3"

    def update_0_1_5(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.6"

        cfg["txt2img/Inpaint denoising strength/value"] = 0.3
        cfg["txt2img/Inpaint denoising strength 2nd/value"] = 0.3
        cfg["txt2img/Inpaint denoising strength 3rd/value"] = 0.3
        cfg["txt2img/Inpaint denoising strength 4th/value"] = 0.3

        # cfg["customscript/tipo.py/txt2img/Enabled/value"] = True

    def update_0_1_6(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.7"
        cfg["txt2img/Hires CFG Scale/value"] = 1.0
        cfg["customscript/tipo.py/txt2img/Model/value"] = "KBlueLeaf/TIPO-200M-ft2 | TIPO-200M-ft2-F16.gguf"
        cfg["customscript/tipo.py/img2img/Model/value"] = "KBlueLeaf/TIPO-200M-ft2 | TIPO-200M-ft2-F16.gguf"

    def update_0_1_7(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.8"
        cfg["txt2img/Hires CFG Scale/value"] = 0.0

    def update_0_1_8(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.1.9"
        cfg["customscript/tipo.py/txt2img/Model/value"] = "KBlueLeaf/TIPO-500M-ft | TIPO-500M-ft-F16.gguf"
        cfg["customscript/tipo.py/img2img/Model/value"] = "KBlueLeaf/TIPO-500M-ft | TIPO-500M-ft-F16.gguf"
        cfg["customscript/tipo.py/txt2img/Ban tags/value"] = (
            "background, greyscale, monochrome, hair, eyes, multiple view, censor, pubic"
        )

    def update_0_1_9(self, cfg):
        cfg["easy_reforge_ui-config_version"] = "0.2.0"

        cfg["txt2img/Width/maximum"] = 4096
        cfg["txt2img/Height/maximum"] = 4096
        cfg["img2img/Width/maximum"] = 4096
        cfg["img2img/Height/maximum"] = 4096


if __name__ == "__main__":
    forge_config = ReforgeUiConfig(sys.argv[1])
