class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.19/modeljars-macos-aarch64"
      sha256 "4fc0d4ef9113f54131edbabf0f7aa8b1d2af2e4c4bdbc145a4169f3489264fac"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.19/modeljars-macos-x86_64"
      sha256 "0812e47e04ad11ec3fe8da4feee3b11371f775544ed81acf6f8ce8157340d209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.19/modeljars-linux-aarch64"
      sha256 "0c1876ed24ad04e92c139dfd2e56f6fb87cf4cdbee5c72593705d8698ba84eaf"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.19/modeljars-linux-x86_64"
      sha256 "23302de1c84610865b4ba331b14f5e23d8ada76a238bb45414b732494e2eb198"
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
