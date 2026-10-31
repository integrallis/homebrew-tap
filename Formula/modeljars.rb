class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.72"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.72/modeljars-macos-aarch64"
      sha256 "7d7ee9085e137da9fe30a17e84977558e691b7bb24ee08c9f68cbb0c9910164e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.72/modeljars-macos-x86_64"
      sha256 "34f53393eecbe2255098a3777de0e15b617896dfc75ddb1a98fc69d5b91ab852"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.72/modeljars-linux-aarch64"
      sha256 "cd2eabd7ac5e93bb18210b4ebd5d7ab217b7ad6110fc27637a292eaab5e10379"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.72/modeljars-linux-x86_64"
      sha256 "0b5d21f076b0c623e75a3c5dc6083ed969fd8ddde70f9ee11d8edc1208ca3afe"
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
