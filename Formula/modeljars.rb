class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.17/modeljars-macos-aarch64"
      sha256 "a05925cab6f76dcf9a8a6609d8739c1e8293be1a4c31f8dd814a928a93b65e45"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.17/modeljars-macos-x86_64"
      sha256 "b81e7d2f3fcf2c2d50d056f0a2e3cb63416c7ebc4bf53a7d093bc87a15a628b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.17/modeljars-linux-aarch64"
      sha256 "3dee66dbb65775637099088eb78d56c2a5017e17eeffb0cf70165a822af7b666"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.17/modeljars-linux-x86_64"
      sha256 "013559dbe9d85d8c30a9728e910bc1a8d4ca013d5b4ea2ce4a185d483ace9065"
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
