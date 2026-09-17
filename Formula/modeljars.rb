class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.43"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.43/modeljars-macos-aarch64"
      sha256 "c35d766972b9db29a52c16a2a43880b3f089a74f201a7612937690154de3cc9a"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.43/modeljars-macos-x86_64"
      sha256 "9d66eaaf211658e6870d50e1fc61ac55b3a0ef0075f36ec6d5079cafebcd869d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.43/modeljars-linux-aarch64"
      sha256 "ada30ed5ef446d9a7d60bfedc0a6e3981c21a362e96efc36c87a41403457aa24"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.43/modeljars-linux-x86_64"
      sha256 "b1298c90e0d4a854691d0935fe584d4be352c9eea0c637b2e576cc73dbe99915"
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
