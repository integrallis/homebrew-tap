class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.35/rankcli-macos-aarch64"
      sha256 "92c7acc19a625b3edc9c0d0fe863524d49c900235240412a4ff84b827ea6eaaf"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.35/rankcli-macos-x86_64"
      sha256 "22bfcfbdfb133c5e5f115ca9aaebcba9650cdd08220440931c99d77a246ae9d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.35/rankcli-linux-aarch64"
      sha256 "8f5625d7aebafb94e537ab749eaa461c00b169867cfd6b8f288343cdc94a332a"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.35/rankcli-linux-x86_64"
      sha256 "78c5ebe8352c353bd780a89df30ec3baeb41f9fcaa96258c4655f242d1be4fdd"
    end
  end

  def install
    bin.install Dir["rankcli-*"].first => "rankcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rankcli --version")
    assert_match "audit", shell_output("#{bin}/rankcli --help")
  end
end
