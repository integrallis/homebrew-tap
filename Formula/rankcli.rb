class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.42/rankcli-macos-aarch64"
      sha256 "17a326d835b42ea9f00c131c0d3e7b8d9f8b5c2fcd9f17f4ae584994156f4795"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.42/rankcli-macos-x86_64"
      sha256 "9ad7b64c92fc356a57273b52cfd84fdd26483cba77c9b0ab38b03563b4ab28cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.42/rankcli-linux-aarch64"
      sha256 "a1f8cdb895b708d5c917885642f6a0126bf8ab9b90a43d8f8c84d9458071ac22"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.42/rankcli-linux-x86_64"
      sha256 "9506ca5c94673eae25f6e7f1546ef35003a7f2ee9fc8513d096e0cf3d15e9bca"
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
