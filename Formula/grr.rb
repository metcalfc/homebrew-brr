class Grr < Formula
  desc "GUI speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/grr_v1.1.0_darwin_amd64.tar.gz"
      sha256 "be784d1a3e8fef3d7bb2fb31f86715a0002d1deab0d453900f482971f19c3190"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/grr_v1.1.0_darwin_arm64.tar.gz"
      sha256 "e3ac25a18c2bf345e6a5d92006764b2dde39024a21607b5bb428479c42855053"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.1.0/grr_v1.1.0_linux_amd64.tar.gz"
      sha256 "28d270752114f0778030b4d6f56fca5b8f5890ea624c2482037c5e8e92970302"
    end
  end

  def install
    bin.install "grr"
  end

  test do
    assert_match "grr 1.1.0", shell_output("#{bin}/grr -v")
  end
end
