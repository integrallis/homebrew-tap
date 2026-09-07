class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.35"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.35/modeljars-macos-aarch64"
      sha256 "8051488e3c644587c31f2b06fe2e1eaa17cd58bb0133c2234272255d18d0b1af"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.35/modeljars-macos-x86_64"
      sha256 "3279d8d8ccc8005caea9fe96142e39866d685f008ad8483ca88ce751c5be24e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.35/modeljars-linux-aarch64"
      sha256 "d28e68a213d2d5997cfd7255cc5fc3f058b08b693e561bc492c7c2cd0f7a69c5"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.35/modeljars-linux-x86_64"
      sha256 "47cc512b8ef0aefded4b5dcb8dff7bf72e81832d614b40b9ea6b626bc98303f7"
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
