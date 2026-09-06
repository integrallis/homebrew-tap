class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.34"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.34/modeljars-macos-aarch64"
      sha256 "5cfa47016f3100a3471bdb8c39e0f1cbbcc2de77992ed66330cdc7970705d918"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.34/modeljars-macos-x86_64"
      sha256 "b42757bcad6221ec52b03d7338e1594ca1714430dc797fcfc3cbe9b83cedb1c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.34/modeljars-linux-aarch64"
      sha256 "a5316d5a1425b9db2c281202d076f4fee50f04328fc55c30ecaaad93fdca71c5"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.34/modeljars-linux-x86_64"
      sha256 "935eb5a94108059177db3c2e821925983ffbe9e18cd26ccf8047f86e53b02a41"
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
