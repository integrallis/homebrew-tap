class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.38"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.38/modeljars-macos-aarch64"
      sha256 "51eca536c03a02f2299e2794306a38381f73b6e9170d20fa818e3dab09798153"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.38/modeljars-macos-x86_64"
      sha256 "30b2f4a6fe9b146507d926d0a0cc0a8bea273df4a20eed786e3f4035a8d09fd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.38/modeljars-linux-aarch64"
      sha256 "59692f4cad043a0c76733a9616b3ec549296d6c6caa659b877db5eb05ac6c25f"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.38/modeljars-linux-x86_64"
      sha256 "2791fa0b93745ffc770601b13d93dd5b84c461b6fc17dfe56cc4a2c605f94cba"
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
