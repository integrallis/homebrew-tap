class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.40/rankcli-macos-aarch64"
      sha256 "acbe9ad1800d2a93399631f8c1391c13ab2d36e3c46e4e7b6db0816755cdf142"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.40/rankcli-macos-x86_64"
      sha256 "01d2f45dfa22635fa240d249ce8c1efa3deecef3eafac185c72defa9c85aa600"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.40/rankcli-linux-aarch64"
      sha256 "dbb1b2e8e90b5dbdc49289b13c759c87b39452cca0f99d9d9f90a24d46c64d85"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.40/rankcli-linux-x86_64"
      sha256 "c0c848ec5f28016acea118ddea6e44c7eed339cd78cfac430a554b0ed203674f"
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
