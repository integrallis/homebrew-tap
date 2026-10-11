class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.55"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.55/modeljars-macos-aarch64"
      sha256 "ae75a427b75dfbf7a31234908f6ded0cd41537939c9086f29a167fdab0c7d01d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.55/modeljars-macos-x86_64"
      sha256 "7f69bfab03ce7170905b8d016aa70830c60ccc56df5426569d7582bc542bce33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.55/modeljars-linux-aarch64"
      sha256 "1ef00e517e566737d9c164f6eb3865269d5b71341b1dff969cfca54d3a48c07e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.55/modeljars-linux-x86_64"
      sha256 "d2920a7a51636509f637fc10532e6c917950be3e5d854695472939827852ed1f"
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
