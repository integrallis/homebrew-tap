class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.44"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.44/modeljars-macos-aarch64"
      sha256 "b76de45e1a6baa3cda1a2066c9595b4415aa5c53b3349ce7eafe26eedd7e1298"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.44/modeljars-macos-x86_64"
      sha256 "3495ca03f27fb785058db4a467f018e5e0a9d9a44640d5dff1547ba889438bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.44/modeljars-linux-aarch64"
      sha256 "724fb5fff1db715e92a570123f71dd1f7ec873ed67235b51ffc81d989aa3e41a"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.44/modeljars-linux-x86_64"
      sha256 "9dccebf06fc0a90701ee62454102031ad3d275f6837effc7ff62725069f6f4f5"
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
