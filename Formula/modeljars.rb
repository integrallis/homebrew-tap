class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.48"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.48/modeljars-macos-aarch64"
      sha256 "0da06e3944839a1b0649a2d95bd8a60cabe1ed50859432f6a632c91d1fceeb43"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.48/modeljars-macos-x86_64"
      sha256 "8f2bc70fa11f37f02b999b4c2d5e74ae85b5b00589e0ae1f21627f7aff527ca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.48/modeljars-linux-aarch64"
      sha256 "795d0caa08a46f78845b37b6488e25b631ad44363a1242b050daabe99e9d5293"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.48/modeljars-linux-x86_64"
      sha256 "0069ecaf9fe1cf466bbb0a9449e638adad18f242aeafa7ddedf87f62fa247b81"
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
