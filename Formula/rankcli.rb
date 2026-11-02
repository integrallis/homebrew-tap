class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.53"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.53/rankcli-macos-aarch64"
      sha256 "5005610244e981b20049c33d84b9860a9930df230e7e6c88766e31d1c5004206"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.53/rankcli-macos-x86_64"
      sha256 "a5f2b39111a9f8955d9bc8c83f3d0674781800582c4d931c1d2b6b8a13ac05bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.53/rankcli-linux-aarch64"
      sha256 "b9c474b0c80823f46070b4b5e8261ea137023824878f8f2e3766fe301f50d7b8"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.53/rankcli-linux-x86_64"
      sha256 "3f45bab9c77a6f54206c03cab6cc1f02c0c5ceb6165b47579fc93137d396c945"
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
