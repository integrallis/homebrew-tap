class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.56"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.56/rankcli-macos-aarch64"
      sha256 "dd1ab6adc9ad096d120dc963f9c41c19752a25294f9483177a6f42799ac01b12"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.56/rankcli-macos-x86_64"
      sha256 "14edc694b70df481e17b2449edc929b994243c19639629c259bcb6caf3cae87f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.56/rankcli-linux-aarch64"
      sha256 "7875b0d65022f1d97460046beb1b69c3e31e8163b8d233c7e6f7fd241259c7a3"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.56/rankcli-linux-x86_64"
      sha256 "5496df550750c029d07a0620bf4ce6b8279fc7e6af7b655a6b72ec0880dc7635"
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
