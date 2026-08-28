class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.21/modeljars-macos-aarch64"
      sha256 "38dd056d9915613edd1c0fa12ea689a41293a8280ba3c0cdd6103f44fc57ea4b"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.21/modeljars-macos-x86_64"
      sha256 "7bfa4f878b338d7d0d18b0689a522faa6928d06d32c48e66bf5fc9789efe7650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.21/modeljars-linux-aarch64"
      sha256 "29211d7b1671f298e7d9b9fa4410b0380e3a6f6faa551a900d46ff76c4caf24d"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.21/modeljars-linux-x86_64"
      sha256 "d40761a47683c8ea255a41ea8c7d7b08b72cd62785a2f0df879ac5accf3fcd6d"
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
