class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.14/modeljars-macos-aarch64"
      sha256 "2074eb34c3c481470ec999b5df795fc569482c71142e91733358c6f4522ae303"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.14/modeljars-macos-x86_64"
      sha256 "a06d60dffdd39529c2cef37c1063e7870cc557f2574138802db219e98e624e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.14/modeljars-linux-aarch64"
      sha256 "f5a2a1b35d531dc375a8c82600d5d576ee2487c25262e734117b649addacbb46"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.14/modeljars-linux-x86_64"
      sha256 "72eb060d5e271b2527a9224d825db0bb07f381fc039e08410acecc066b230a77"
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
