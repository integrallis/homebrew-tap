class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.33"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.33/modeljars-macos-aarch64"
      sha256 "01fe3834eb022b254106270b4b8c289fac15aa0060421f72dd5608aa98ee94aa"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.33/modeljars-macos-x86_64"
      sha256 "1fac54d070b54f020db152a30aa93afce290ea630d28d037d8559c8a94a20bfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.33/modeljars-linux-aarch64"
      sha256 "e2d7b10789a69e299b9714f73d83f65bd8295d9823352b38c9503b03401bd444"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.33/modeljars-linux-x86_64"
      sha256 "13d873f8e540dd180ad541eadb60cafa8fcbd60155e71701c9f247f26a59b32e"
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
