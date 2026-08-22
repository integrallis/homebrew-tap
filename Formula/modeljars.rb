class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.15/modeljars-macos-aarch64"
      sha256 "ac38955026deda18b15ce1104a39d33eac07cf2071f5e093bd63d9bd631e086b"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.15/modeljars-macos-x86_64"
      sha256 "4eead17efb9e8736d25f2d446a815b5c4699fecb3170cc401250557493f9552e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.15/modeljars-linux-aarch64"
      sha256 "2000cc9d69249bcd43414ac89c46852f67bc25ad9581221d41974472c1ad110d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.15/modeljars-linux-x86_64"
      sha256 "b569bef0a15a322eeb5f65e10a46f9e204afeae7456b493c9eb5b918b6e598e1"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --color never")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end
