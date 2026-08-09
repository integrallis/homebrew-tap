class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.8/modeljars-macos-aarch64"
      sha256 "93ac5f7f17362d6f64ec68c6a0dfd2dc6c6f9cb3c58cfb390566bda8369845d5"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.8/modeljars-macos-x86_64"
      sha256 "234d15992101c9d5784fb636a067f643c3624dd48c1418850246e07e224bfe3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.8/modeljars-linux-aarch64"
      sha256 "7d7b70d87321f1d87bdad36631c3cb5d4ebab770dc208e391938e397c6c23717"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.8/modeljars-linux-x86_64"
      sha256 "7254d9a5b91bf35a3b45ca900be7874373e80db296b7ff62cf8826240178ecfd"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    assert_match "ALIAS", shell_output("#{bin}/modeljars search gemma")
  end
end
