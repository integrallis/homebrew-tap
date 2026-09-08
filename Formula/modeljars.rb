class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.37"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.37/modeljars-macos-aarch64"
      sha256 "8df4e9b419144e5e912245cd8bfff74a1174a4570e18ffa37be4d96555c75afa"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.37/modeljars-macos-x86_64"
      sha256 "6a5d0e7068cef80b18a70027a0e955a96f320a3bd19032c819b71578e570665d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.37/modeljars-linux-aarch64"
      sha256 "6e1376d209b53d37efd1f259a519bca7ab79c137a08e142dbef9539423d86e67"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.37/modeljars-linux-x86_64"
      sha256 "e154fd7865d50cc83e4bcb24015c0e93344b73efee89f62911bd68e0363b106e"
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
