class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.39"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.39/modeljars-macos-aarch64"
      sha256 "75d5cef9231a10633b8bf65b4787d96552ccb4dee57ff6cfde30d6c05a06fb6e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.39/modeljars-macos-x86_64"
      sha256 "6138ae70fd3f6c86cc26123e5fea4156090f37a9716bea2f67a666cd9ebbd469"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.39/modeljars-linux-aarch64"
      sha256 "f0d15444e47180be795dff05c89c8b32ba94d59bf5c867ea77d0dda5c0021113"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.39/modeljars-linux-x86_64"
      sha256 "6e105d9671bbbeb47d3543519ac32eaa0b3d043b7d5f94618d38af12e5c41847"
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
