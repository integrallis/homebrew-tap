class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.36/rankcli-macos-aarch64"
      sha256 "ed4796522486bdaf3ac4576f1c5c6f22af23703bc287ce32970a2647d76c6d99"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.36/rankcli-macos-x86_64"
      sha256 "770eb332ca6fa6c3d85f5e0a58101d1ead31bf34f435b0b22fad62387dddf930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.36/rankcli-linux-aarch64"
      sha256 "2dae132981cf3dac6e04d8104ad6dc63278a82329a3831c7a07ea5f36bbef116"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.36/rankcli-linux-x86_64"
      sha256 "8b46cbcf50e32be9b3321859dcae8a9e884e12038ec3897830ce06167062f0a3"
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
