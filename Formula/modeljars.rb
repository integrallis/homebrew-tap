class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.71"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.71/modeljars-macos-aarch64"
      sha256 "aa5622c87a723ca60f4267bfb750ccbfb1bd943c2f2e3db1ca89b1681da5d7c1"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.71/modeljars-macos-x86_64"
      sha256 "87f33569dc808ea07a354e6620f51036a405919e3ac6a4fdc4fce508872f6464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.71/modeljars-linux-aarch64"
      sha256 "731ebf43280bc4491cc5ac68ed1820aff6659b5ad194edf5e6ec0bbfd3b188b6"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.71/modeljars-linux-x86_64"
      sha256 "ef2ebb4545bebb4e85ba2bc90b633f5c14f5f47737e6340191d043efa8e2eb65"
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
