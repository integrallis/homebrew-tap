class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.36"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.36/modeljars-macos-aarch64"
      sha256 "b2baa1df6a175ad99b70aba5c96199eed2d73283b672afbcb1b125bb1aaedcf2"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.36/modeljars-macos-x86_64"
      sha256 "adfec89bc7cfae171e788889e2a75ad587046de3f73dc88395d4026a3df60120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.36/modeljars-linux-aarch64"
      sha256 "a868c5bd283a82f1f200023a11adbaf66d52adcbf1e106e0a4416e2ceaeb7f59"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.36/modeljars-linux-x86_64"
      sha256 "bdc711d52408b077c2cf43c41c59060b799ac81c0f1495b14a84ec92a0457199"
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
