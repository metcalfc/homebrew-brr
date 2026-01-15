class Grr < Formula
  desc "GUI speed reading tool using RSVP technique"
  homepage "https://github.com/metcalfc/brr"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/grr_v0.1.6_darwin_amd64.tar.gz"
      sha256 "dcf83083b949195ac255c01cc750fa18b8fecfec2961f3f42af32a1d8339a866"
    end
    on_arm do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/grr_v0.1.6_darwin_arm64.tar.gz"
      sha256 "3710233c474dcd43f4aa4d672d89c88217189d1e58c3413c3428cf4306ed8282"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/metcalfc/brr/releases/download/v0.1.6/grr_v0.1.6_linux_amd64.tar.gz"
      sha256 "aee36d828f3f4353f8debc4dd186d0d86c212c5ed819023b8f033d05f26215f9"
    end
  end

  def install
    bin.install "grr"
  end

  test do
    assert_match "grr 0.1.6", shell_output("#{bin}/grr -v")
  end
end
