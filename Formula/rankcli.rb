class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.45/rankcli-macos-aarch64"
      sha256 "5cbd0c92c667de2acf64bc9de58f735782a47bdbb80c383458475dbadcc95093"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.45/rankcli-macos-x86_64"
      sha256 "d934a8b97eb8b56444c8171726d587b86b4fcb735d96300070492c5e2f1a9495"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.45/rankcli-linux-aarch64"
      sha256 "dd187e82d0d14f9970b399c97109959f4ebc28d05660ed12221c0edd245daad9"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.45/rankcli-linux-x86_64"
      sha256 "5bc2a0fff6cb8fac8899f8516ab4ac61514b0b1cf50edbb77c544f09507f74b3"
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
