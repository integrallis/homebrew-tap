class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.56"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.56/modeljars-macos-aarch64"
      sha256 "cf9205006c35bdea3f8b74f1f047d08f6d292fd64d8d289a65a391bb5f8c0d6f"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.56/modeljars-macos-x86_64"
      sha256 "f06c5d38e3e6066a957114c9c9353e72e0f762ae02cf07e07d0b2875872eb1ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.56/modeljars-linux-aarch64"
      sha256 "ef307e5ed44b5970bac0da51fbc087aa80742eae36e82cf8391e276855bce5e9"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.56/modeljars-linux-x86_64"
      sha256 "7dbf3c61500b8e71ad845ca60eb6d4950d122129348983545d0d5d3495bf99ac"
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
