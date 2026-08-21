class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.11/modeljars-macos-aarch64"
      sha256 "3cad4a8c9cbcc91fb7d579a26c78ebf05a5e2d82596247bcda9042fb38141b06"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.11/modeljars-macos-x86_64"
      sha256 "ff1f91a9a8c8ee87c30a0f5c2978d739205f23c58db38faedfbe6f6290646053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.11/modeljars-linux-aarch64"
      sha256 "8b740625091025bab45ba40bcea4cbfb9a03f916805ef402f630e3289bb57828"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.11/modeljars-linux-x86_64"
      sha256 "58fdea11afd34c90795da489a308e1dfeb972953ca9cdf04963dfe348aa8c91a"
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
