class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.18/modeljars-macos-aarch64"
      sha256 "a72570c27b2b7b3f422953303bc5270ccdcbfd14723aff50f5fa6996ebbc350e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.18/modeljars-macos-x86_64"
      sha256 "a0a36cedea72b563eb471299d6844a434b59dd2a121bf332c737144ec0430f82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.18/modeljars-linux-aarch64"
      sha256 "92dc062462af18b8c40df8b2f0a6831de370093185af0400a1f0c1f18e9f8331"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.18/modeljars-linux-x86_64"
      sha256 "85c8b465499e1ba12a68f82401aea92a35816737cb82f0830df0cce17425ee2e"
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
