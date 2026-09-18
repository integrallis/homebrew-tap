class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.30/rankcli-macos-aarch64"
      sha256 "9df572a936729c46af65d97ab98e879bb78b90ca040f8e8703b5ab63e23195ae"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.30/rankcli-macos-x86_64"
      sha256 "ad1befd63e1cda067e58948d01353b5271799adb04af6b24d856caa2783b89f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.30/rankcli-linux-aarch64"
      sha256 "57e32caf1de3886942e180449405a81db1db451652e91948ae52286f3965d41a"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.30/rankcli-linux-x86_64"
      sha256 "9f7a21c06dfc98826af4c1477e8862a5be65c60bc58fd67dccfcf8e8c330848e"
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
