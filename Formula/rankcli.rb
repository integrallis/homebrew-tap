class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.22/rankcli-macos-aarch64"
      sha256 "898bf749c5250aaf7abdf899580a3acfe440fe93657ad8aa66f9e7d87fc0d23d"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.22/rankcli-macos-x86_64"
      sha256 "00296682c96a6caa7d814a58b2916a17124de6783753c864b6dbbd5c96a52a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.22/rankcli-linux-aarch64"
      sha256 "54d34afb14a26cdb95380852386e1db4e589de93dad14dd24dae5aff491015d8"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.22/rankcli-linux-x86_64"
      sha256 "218f8e2f074e4d2caa171dd6791bf29199231991edec6281601397716f80be7b"
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
