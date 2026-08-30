class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.24/modeljars-macos-aarch64"
      sha256 "6b547d6ccbec6b1589cb949becad4c929158f0b211d58cce9d280e726dc52b8d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.24/modeljars-macos-x86_64"
      sha256 "77b3212bbc145ad5d80be05c189f3a79cd4d317bba16a22a3e545444a2cdc290"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.24/modeljars-linux-aarch64"
      sha256 "3d2f15e55b810934ee29c31e3d65ba48f803d769063f7cdaef1733846366e9c4"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.24/modeljars-linux-x86_64"
      sha256 "e5000c4cb0a75b3e3ec75ff4a63cff5d945078d1bbac31ff33129c2274fda52f"
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
