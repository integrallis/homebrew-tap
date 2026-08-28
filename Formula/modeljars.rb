class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.20/modeljars-macos-aarch64"
      sha256 "743d68d8492a0515062b70bcdec8fa93e60c086d85cc050bf931d999e27467d8"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.20/modeljars-macos-x86_64"
      sha256 "5e60f2a70d3f50245df18de0296ef7aa714fbe3c6ac2a47b16491c0714685a6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.20/modeljars-linux-aarch64"
      sha256 "df23daae4c80093304da71e11713f00ab45f6840af26265a3ace5dc0bb060d89"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.20/modeljars-linux-x86_64"
      sha256 "990fbb970636f5cbcd0a51140aec1651ec3d5f10de8faead5d0118e131219cd7"
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
