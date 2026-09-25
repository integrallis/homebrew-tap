class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.53"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.53/modeljars-macos-aarch64"
      sha256 "b14814b1f81255df0ed87c6b6b82bcafb4ee15c06730bcd6b93ac305ad23704a"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.53/modeljars-macos-x86_64"
      sha256 "cddda26cba07cc703d16a9df8f38a0a659f4e1e217b82a44e1e586ede0a89f1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.53/modeljars-linux-aarch64"
      sha256 "eb59ae28f5feff1a6331f3c88257d4633967be5fd6c94e20d99fd6de1c479cb1"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.53/modeljars-linux-x86_64"
      sha256 "bcdf58d69a142390554c764104510f21de15a48a4b7b648dfa949f1d07707425"
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
