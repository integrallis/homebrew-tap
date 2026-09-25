class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.54"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.54/modeljars-macos-aarch64"
      sha256 "59215a2c79557a9d49a456113549565f668f204630bda3af730b00d07828beca"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.54/modeljars-macos-x86_64"
      sha256 "8f2ab7a381c8d54a68a87fa23a896d29d4e93a51f05e12e977d000ab4b28708a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.54/modeljars-linux-aarch64"
      sha256 "7e511fe0d59756402867a5bcb35524a7bc1f5824a64100ba6f6f1a0d2747a45e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.54/modeljars-linux-x86_64"
      sha256 "1bd55ad4b4a7cc4d767f3baafa68fc8795b582ae78aefb441d55f904b826db71"
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
