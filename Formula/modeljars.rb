class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.6/modeljars-macos-aarch64"
      sha256 "626a618fd5c06625e9cbb85ca1da3699cdbfb7a2edacedfef748ea425e21b269"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.6/modeljars-macos-x86_64"
      sha256 "f957265fc882d9203dfa902c50aca5a0727bdbeebedb7c8a3e6e6c0cbac90240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.6/modeljars-linux-aarch64"
      sha256 "0dfa83e062cb159f6dbc1a31972c30d2858e63884ce9a6c616ceed8fc70112b6"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.6/modeljars-linux-x86_64"
      sha256 "413c3450592417479297377eb71cebd0563aab7f4dd3b9c0e8f50d5f03619624"
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
