class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.25/modeljars-macos-aarch64"
      sha256 "af0d69f5c9476a049f96d518f07b344fe13e94becd07b796d0a239fd49826230"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.25/modeljars-macos-x86_64"
      sha256 "e6e2a5cd4ffa75ae6b0460024cde04eeeb8792f96d26dbb1d9c828f8a1511bd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.25/modeljars-linux-aarch64"
      sha256 "69186964dd5106665e7e6ff03c5590ea409f0827dbab389e9454f18da5f5baf7"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.25/modeljars-linux-x86_64"
      sha256 "db23c7a14dbc05caa9afe32f224e5b370c8a6a8fed00e43077042bca50ad79fd"
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
