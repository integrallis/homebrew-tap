class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.28/modeljars-macos-aarch64"
      sha256 "bad1c99d56ad9e65edb7a376ac1e6071a9aa8692cf0c9cd6879bc4534e177468"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.28/modeljars-macos-x86_64"
      sha256 "16db56e63a9e57d219ed48af18e692a6eeec3f4beb4675e571a4f4a5fda1e75e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.28/modeljars-linux-aarch64"
      sha256 "64b4b0f81a7d9c1abbd746c21dff52809e7537a987927abafe250b1f5598658e"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.28/modeljars-linux-x86_64"
      sha256 "cb60a3d4be73d8a6f5351584d144ed84f9dbf99c3fb404a20b4d6ea71a687b32"
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
