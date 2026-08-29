class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.23/modeljars-macos-aarch64"
      sha256 "3f23ed1ed56c931c1436766cea8178b5b34f4c81125b8a1abf6c960b36d7c713"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.23/modeljars-macos-x86_64"
      sha256 "89b3ee283343c9483f081deae647bdc5a8816bf27a59134bee82a98ea202c334"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.23/modeljars-linux-aarch64"
      sha256 "3d4cec136db0dbe24dee1e6699f3b491e10ba5c47e32abbb44a21b268a41949f"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.23/modeljars-linux-x86_64"
      sha256 "ecc0853edf505e2161b430187542b8a48e6ad6cceaf4cfefc2a6af92f474399c"
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
