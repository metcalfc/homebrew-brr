class Brr < Formula
  desc "Terminal speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.5/brr_v0.1.5_darwin_amd64.tar.gz"
      sha256 "87259e6d710433be587e0e79d194081fc50b0af5ecfe2ac31f3ec22ec74184c7"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.5/brr_v0.1.5_darwin_arm64.tar.gz"
      sha256 "831359a3cbc98d13348c545cfd0bc12b22aea549b05a201399a0503e314a8e55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.5/brr_v0.1.5_linux_amd64.tar.gz"
      sha256 "7a89e4ebf47605453cc5fd3c0925f5441b159c2dd64605c0e041c6b5c7ccb30d"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.5/brr_v0.1.5_linux_arm64.tar.gz"
      sha256 "529aef929a5e77b0653823467648b61599cf5b8cd1920bc5dd945db440fbaa30"
    end
  end

  def install
    bin.install "brr"
  end

  test do
    assert_match "brr 0.1.5", shell_output("#{bin}/brr -v")
  end
end
