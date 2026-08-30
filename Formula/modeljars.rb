class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.26"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.26/modeljars-macos-aarch64"
      sha256 "c600535ce2ec9d8445eef23a0e74d8a723b8084a57a6eb7d161044592b53c6f9"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.26/modeljars-macos-x86_64"
      sha256 "b16955b8804a5ea8a8d5c5d4ec9254dd233bb69a2de8aeaa5597dbf045f0ff4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.26/modeljars-linux-aarch64"
      sha256 "d5de8a99962b64e06a85a04cd6ff0bf473618c988aaac9b6115df21d5753c80a"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.26/modeljars-linux-x86_64"
      sha256 "66bfee7f961bfe2a26f1160bf1db973fd35427151d6008cede4b643815391099"
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
