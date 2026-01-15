class Grr < Formula
  desc "GUI speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/grr_v1.0.0_darwin_amd64.tar.gz"
      sha256 "290d1175e6df53daa52bf1900f4770def73e892d663f15e0c8b2aadcb5a670b5"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/grr_v1.0.0_darwin_arm64.tar.gz"
      sha256 "76cafcf56ab97fc668f895739ff07fff6c8d25fd84c279786d6448ba09cde442"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v1.0.0/grr_v1.0.0_linux_amd64.tar.gz"
      sha256 "ae549be176341d9da20df718edf9231b280a130c94a338bb2f64d842ac193ad5"
    end
  end

  def install
    bin.install "grr"
  end

  test do
    assert_match "grr 1.0.0", shell_output("#{bin}/grr -v")
  end
end
