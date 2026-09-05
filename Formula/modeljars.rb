class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.32"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.32/modeljars-macos-aarch64"
      sha256 "55ee24219bc0027c3debb4aeb7b7e48472bf534036a044a3d50c7a6090c0340d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.32/modeljars-macos-x86_64"
      sha256 "0b2464ecc1a6cec28a325a4c4383d04c2f84948cf5abef2eaaf7c504a3d4aa0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.32/modeljars-linux-aarch64"
      sha256 "81b779b26d45643bd42f2867f4946d04973b746a63957221f27022f4d779511e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.32/modeljars-linux-x86_64"
      sha256 "b5dc995e409ab33f05d4f16dcd45e7efa69352152c0733e071910151ed3249af"
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
