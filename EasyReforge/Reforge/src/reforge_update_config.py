﻿import json
import os
import sys


class ReforgeConfig:
    DEBUG_MODE = False

    def __init__(self, cfg_path):
        self.updaters = {
            "0.0.0": self.update_0_0_0,
            "0.1.0": self.update_0_1_0,
        }

        if not os.path.exists(cfg_path):
            with open(cfg_path, "w", encoding="utf-8") as f:  # BOM 不可
                json.dump(
                    {  # InfiniteImageBrowsing が WebUI 上での初回保存前に参照するため
                        "outdir_samples": "",
                        "outdir_txt2img_samples": "outputs\\txt2img-images",
                        "outdir_img2img_samples": "outputs\\img2img-images",
                        "outdir_extras_samples": "outputs\\extras-images",
                        "outdir_grids": "",
                        "outdir_txt2img_grids": "outputs\\txt2img-grids",
                        "outdir_img2img_grids": "outputs\\img2img-grids",
                        "outdir_save": "log\\images",
                        "outdir_init_images": "outputs\\init-images",
                    },
                    f,
                )

        with open(cfg_path, "r+", encoding="utf-8") as f:
            cfg = json.load(f)
            if "easy_reforge_config_version" not in cfg:  # ファイル生成なし対策
                cfg["easy_reforge_config_version"] = "0.0.0"

            if self.DEBUG_MODE:
                cfg["easy_reforge_config_version"] = "0.0.0"

            if self.update(cfg):
                f.seek(0)
                json.dump(cfg, f, indent=4)
                f.truncate()

    def update(self, cfg):
        version = cfg["easy_reforge_config_version"]
        if version not in self.updaters:
            return False
        self.updaters[version](cfg)
        self.update(cfg)
        return True

    def update_0_0_0(self, cfg):
        cfg["easy_reforge_config_version"] = "0.1.0"

        cfg["export_for_4chan"] = False
        cfg["lora_preferred_name"] = "Filename"
        cfg["ui_extra_networks_tab_reorder"] = "LoRA,Checkpoints,Textual Inversion"
        cfg["emphasis"] = "No norm"
        cfg["lora_show_all"] = True
        cfg["extra_networks_tree_view_default_width"] = 300
        cfg["hires_fix_show_sampler"] = True
        cfg["hires_fix_show_prompts"] = True
        cfg["interrupt_after_current"] = False
        cfg["quicksettings_list"] = [
            "sd_model_checkpoint",
            "sd_vae",
            "tac_tagFile",
        ]  # "CLIP_stop_at_last_layers"

        cfg["dp_wildcard_manager_no_sort"] = True
        cfg["ch_dl_lyco_to_lora"] = True
        cfg["ch_nsfw_threshold"] = "XXX"
        cfg["tac_showWikiLinks"] = True
        cfg["tipo_no_extra_input"] = True
        cfg["ad_save_images_before"] = True
        cfg["ad_bbox_sortby"] = "Area (large to small)"

    def update_0_1_0(self, cfg):
        cfg["easy_reforge_config_version"] = "0.1.1"

        cfg["disable_weights_auto_swap"] = False


if __name__ == "__main__":
    forge_config = ReforgeConfig(sys.argv[1])
