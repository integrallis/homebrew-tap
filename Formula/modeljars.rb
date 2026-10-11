class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.57"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.57/modeljars-macos-aarch64"
      sha256 "604635b9cd94981738c7f6e86bf61cb87bc2d5102edc69fdbb3d9dcc13cddee9"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.57/modeljars-macos-x86_64"
      sha256 "98467e2af24023c7221593aa69af181cbb8d2a2d9ea01ec46eda08d8df43312a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.57/modeljars-linux-aarch64"
      sha256 "57fea5d33e1754559232f5fff284bcce04957390929ba042cf534f940c4c3247"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.57/modeljars-linux-x86_64"
      sha256 "7e445a689a989e5d797b4cadd19d0245202c20ca2d533d4b22aa1816d4336800"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --output json")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end
