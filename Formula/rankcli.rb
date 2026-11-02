class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.52"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.52/rankcli-macos-aarch64"
      sha256 "34c09a7e5a4f9a0b1fc4d24cf855b404927909c9306f49d56b1be88d64c956ef"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.52/rankcli-macos-x86_64"
      sha256 "f8771a8028e1777caf5599d73ca10a6a2b5a2b386271f39329290657c530b617"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.52/rankcli-linux-aarch64"
      sha256 "c93bd021cf512fcdd6a79d6f2d4cedb1b5ecc3be4ea5367c1914ca5782b340de"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.52/rankcli-linux-x86_64"
      sha256 "d766c90d346f2c303642d6ce1ac4d083de84a5eaeeeaa5f56a7a958edce8f89a"
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
