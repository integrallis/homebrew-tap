class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.47"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.47/modeljars-macos-aarch64"
      sha256 "acdb0b5694298683d39282375defbf32427ced468f6d52dea068d0f0d555ce7d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.47/modeljars-macos-x86_64"
      sha256 "f3c5af62fcf2467da94e4ba14697515a880250613cd1ca9278f4d4881b89dade"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.47/modeljars-linux-aarch64"
      sha256 "b48c10ee39918a2065cd08c086f6214309e84858dd16ac15e7d394fc6af6c289"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.47/modeljars-linux-x86_64"
      sha256 "d96218c942a3c10c062fc515c235d8142f71ea0b784aa575d4eb3380ffaa0fe4"
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
