class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.22/modeljars-macos-aarch64"
      sha256 "de52c076b05a6043df94142450368d84aa34750a4bc15b6abd3e3de4a635c069"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.22/modeljars-macos-x86_64"
      sha256 "09f854d9530cc9c5522feb56ceaf46413fe59a5b7ea6f9fb0b87d1f606f96d95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.22/modeljars-linux-aarch64"
      sha256 "9a8611b01108b8d3622b0fe7aab417b43689f726f3a23b38f360be0c865da59e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.22/modeljars-linux-x86_64"
      sha256 "d6836dc8d1023bcddc021af7494146ffa535e6927f80878d36cfdfe855d5d5fa"
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
