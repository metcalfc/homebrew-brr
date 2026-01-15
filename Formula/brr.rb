class Brr < Formula
  desc "Terminal speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/brr_v1.1.0_darwin_amd64.tar.gz"
      sha256 "0b43739fec203071c35fb2937a183c6f1a5cb66c6962a9e81f57da03f2b36d62"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/brr_v1.1.0_darwin_arm64.tar.gz"
      sha256 "87dc9c0f6b167d29eda6e5d2a54fd3cffe3d9cb50d972a0275ce64367b7de540"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/brr_v1.1.0_linux_amd64.tar.gz"
      sha256 "cd3f3d00771e529b75ee0eb00f380e2193f40ca7c186b4e0a31c4bf1e3e1defb"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/brr_v1.1.0_linux_arm64.tar.gz"
      sha256 "7c736ec7c1f122d6cc0bd15ec2dcdaa017817aee427d7f0266759ac634361f5f"
    end
  end

  def install
    bin.install "brr"
    man1.install "brr.1"
  end

  test do
    assert_match "brr 1.1.0", shell_output("#{bin}/brr -v")
  end
end
