class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.29"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.29/modeljars-macos-aarch64"
      sha256 "28f97514294b82ab1773296fa77db2b3a3178ece5c9c169a504fe94d1c1ddf39"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.29/modeljars-macos-x86_64"
      sha256 "0d0d43f3301ed94034b812c9750ea933065a1c8174a7f8301c8abb0131d131cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.29/modeljars-linux-aarch64"
      sha256 "50f4dbe7db685abda099edefc3a48f59c2028f581dffc4857140958cd36d6161"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.29/modeljars-linux-x86_64"
      sha256 "2525a06ee52cbe982c1e6783ed5a4aa6a70b18601366a3f302d0a3bf66eafc13"
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
