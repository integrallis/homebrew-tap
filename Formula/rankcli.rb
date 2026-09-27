class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.46/rankcli-macos-aarch64"
      sha256 "fb2c53450f70f554066c9fa8cdd7bf61e548c3a9c4c0a0a56517bd15c28fdd19"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.46/rankcli-macos-x86_64"
      sha256 "b5f57290a8bdf208c56d3572b9980934a2c231ad389f3a92b79f73fa66da096e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.46/rankcli-linux-aarch64"
      sha256 "95b8e73d0e460039fd4287142baacfb6dd669678ecfa2398e02f470170ecbb29"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.46/rankcli-linux-x86_64"
      sha256 "f1b8a62c14d5cf341a0fbf15a88f19e268ead134a16dce3bfd19bfbe5ba26228"
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
