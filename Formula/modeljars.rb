class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.27"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.27/modeljars-macos-aarch64"
      sha256 "d9209c837958938e522b4b046b3a019b271b09689f026857ca0fd3c92e31ea94"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.27/modeljars-macos-x86_64"
      sha256 "e520c9dd584ecdd2e3c2fc5e45d925e643753aadea264048bd6f622065394aec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.27/modeljars-linux-aarch64"
      sha256 "6bcefb6db4cdbe33b2a2927a8f1aa276aed13d14cfdcda43df9d7b5e393ace21"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.27/modeljars-linux-x86_64"
      sha256 "2cacff13fdf9da06e3044b07ce52dd5d3c749117a085562237b4587180114a99"
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
