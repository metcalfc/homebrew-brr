class Brr < Formula
  desc "Terminal speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/brr_v0.1.6_darwin_amd64.tar.gz"
      sha256 "ff3be46300b02cd18548161d1c0a88a0f28d03819d4f4856675722541fde208e"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/brr_v0.1.6_darwin_arm64.tar.gz"
      sha256 "c9b87e2d76cac759031b600208200fc05b3a2cfe116a0ce8db0aa5754830f411"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/brr_v0.1.6_linux_amd64.tar.gz"
      sha256 "8219be0b9779fcf8b6dfb489784020e610b39b4d72a1b114d6f805558a23f313"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/brr_v0.1.6_linux_arm64.tar.gz"
      sha256 "234a01ca282e52b25eb31710771721706448edbe3310ec3e7d3f88b61c79540d"
    end
  end

  def install
    bin.install "brr"
  end

  test do
    assert_match "brr 0.1.6", shell_output("#{bin}/brr -v")
  end
end
