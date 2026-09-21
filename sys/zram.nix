{ pkgs, ... }: {

   services.zram-generator = {
    enable = true;
    settings = {
      zram0 = {
        zram-size = 5120;
	compression-algorithm = "zstd";
      };
    };
  };

}

