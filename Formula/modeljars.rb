class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.42"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.42/modeljars-macos-aarch64"
      sha256 "2d64f7e3f63845c94316c6bede1c526240b860d27176043d6763fd7d1369dd03"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.42/modeljars-macos-x86_64"
      sha256 "6e6eb3954c3e2e64b6a3d348cd097e5f2251b5c40ee8441acb5e866446ce2207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.42/modeljars-linux-aarch64"
      sha256 "4a325f4b84622f9daff3a65c6a9394356b7057026033e69152a6d3b6dc2cd192"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.42/modeljars-linux-x86_64"
      sha256 "43168562e76b569ef3fd581369d5bf4d1c2058ceb159e777f132029edb571902"
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
