class Brr < Formula
  desc "Terminal speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/brr_v1.0.0_darwin_amd64.tar.gz"
      sha256 "27fa4eca9ab9b6959fb80bd3e3c26a55a8ae9d59173ce8a248804d5f4d4f6b94"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/brr_v1.0.0_darwin_arm64.tar.gz"
      sha256 "ec7cc7b0ad0cdb67f286cba51a1e283dca39373dd35ce92f65b5f26cc1270b06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/brr_v1.0.0_linux_amd64.tar.gz"
      sha256 "43ad32b7dc55414f9346fc42470b6847a980b0e8b4ae6a60906b73daec0a4907"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/brr_v1.0.0_linux_arm64.tar.gz"
      sha256 "552c0a24a9c222dc6c69230788f37f48c0d2d07ff4806e366bbb1291055af9a1"
    end
  end

  def install
    bin.install "brr"
  end

  test do
    assert_match "brr 1.0.0", shell_output("#{bin}/brr -v")
  end
end
