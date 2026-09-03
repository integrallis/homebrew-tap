class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.31"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.31/modeljars-macos-aarch64"
      sha256 "84fa98458202ca97d4d48aa41687f50d578952e1ef2bbfd2e8e403f067999553"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.31/modeljars-macos-x86_64"
      sha256 "34ce9e00cf31a87451ff90b343a73ed6d3468a692584eed9cd044ac172383843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.31/modeljars-linux-aarch64"
      sha256 "db3cf6f94129afd5ce41065cfaf21fa81a428df489ae03b77eae174bdafa122a"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.31/modeljars-linux-x86_64"
      sha256 "8088e3c186d499141094783a0568c877885ab04c9828f484c09daa2408e0282b"
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
