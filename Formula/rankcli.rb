class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.23/rankcli-macos-aarch64"
      sha256 "deaa841289968a62e7bc33883720432e58db93f57e36065e5cf61181bac87974"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.23/rankcli-macos-x86_64"
      sha256 "f3dafe3a25c499f2f3846578e96a3afdd60156cf790e4285e4a2b4ceaca6ba4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.23/rankcli-linux-aarch64"
      sha256 "c75b9867a8edb927b10eab9a23a3c72651af26c6ae728429294fc57bc28fdf89"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.23/rankcli-linux-x86_64"
      sha256 "1bc01c6e4201703370d1e8c44e1f59d166ac018d254433ebc29132bc3dcdd158"
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
