class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.40"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.40/modeljars-macos-aarch64"
      sha256 "4a0aa131a4f9e862e2cee06a71ccc6121227a7f2595e015240b46117512cc424"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.40/modeljars-macos-x86_64"
      sha256 "31b1bd91d269628ab9605c1fcf04fd907ed1dfc4e3562cea1c655a9c3db27568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.40/modeljars-linux-aarch64"
      sha256 "cedb1ca7638349d4f53fbeb7a9177eef8a70b626a94b868e812ccd7044aa7435"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.40/modeljars-linux-x86_64"
      sha256 "c8f7f8e991dc91d0c0fafb9bf4c5c750daf4d03e47309254e0988b9a0ea5ab6d"
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
