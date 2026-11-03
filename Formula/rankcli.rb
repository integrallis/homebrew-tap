class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.58"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.58/rankcli-macos-aarch64"
      sha256 "5ee5072b07fd0ed0cd9722d5dc2898a3da19fa2654de495e4e58c96fd80ab0f0"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.58/rankcli-macos-x86_64"
      sha256 "262887063317799fa5d24ee1c889a5220b54ed9cc8f7dca1506a84962d802600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.58/rankcli-linux-aarch64"
      sha256 "1f037abd707a101f36343aa7bdd930939792e0cee6c5bce9ea6bd1ff5769cf89"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.58/rankcli-linux-x86_64"
      sha256 "9c326dd5bc442c336eca03e6ae93ca636783b90b0a6675070d913db953a1d5db"
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
