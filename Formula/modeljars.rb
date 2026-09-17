class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.45"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.45/modeljars-macos-aarch64"
      sha256 "5a93f1d691a95584cf04c1f0711176496b2f7c7a6344b0f4ba63fa17e42210ce"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.45/modeljars-macos-x86_64"
      sha256 "eefa7184c9eb1b6dc1327ff7c36ccf4fe90e93bcece81efe36e9fb6031a1a547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.45/modeljars-linux-aarch64"
      sha256 "43bf95d41ee3b948e89d2e9578e3007a86d62d897935cc3e217ad03fbb74b8dd"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.45/modeljars-linux-x86_64"
      sha256 "dc612104140f60cd9db5547f978d54bcc6d1980fdc19da686217a390bfd2b47b"
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
