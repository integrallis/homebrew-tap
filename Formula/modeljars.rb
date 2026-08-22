class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.13/modeljars-macos-aarch64"
      sha256 "de51ab25c9db4878a0234d790d902245181d671b22e5bec33fd35e8ea139b32f"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.13/modeljars-macos-x86_64"
      sha256 "db10d33153589d97755f45437269eaa102c5761b9597a90578510383ca41e6db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.13/modeljars-linux-aarch64"
      sha256 "17b817c516b13a12dc142b90c935ffb7662962b4660cc8702a6d04a6a3eff58e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.13/modeljars-linux-x86_64"
      sha256 "c76d8015d77ee54bc0d5a330435f11fb5deec5a353dcfec429d6a85986300a3b"
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
