class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.39/rankcli-macos-aarch64"
      sha256 "682310076dcf223baa394014e52eb36a22d9765d5e45c5dba1d4594898177a32"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.39/rankcli-macos-x86_64"
      sha256 "698c1465c9608f49acc07e81cdd014ed74f355e37302a6a33b6977363edf18e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.39/rankcli-linux-aarch64"
      sha256 "14f295fa81b3c1abc68b6a8bed4921748818f82b4a48bdc5cfe9ce07ef9fd3bb"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.39/rankcli-linux-x86_64"
      sha256 "cb3b6b62d0066d2420c59206e43f9a731596e0598e33ad0a657064913dcc98b2"
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
