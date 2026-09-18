class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.29/rankcli-macos-aarch64"
      sha256 "81bdb9ecaec8439d54695844d1a0fb1bad52602decc0277c4d39f2816bd6f53a"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.29/rankcli-macos-x86_64"
      sha256 "d2c92d4341f0da7deae36aa1002fda14698335c9545d29ae772d1aaa4b2f9a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.29/rankcli-linux-aarch64"
      sha256 "536f63a1a93d047dfbaa22df5e111c37339decd5719b0c253a5322062b3e60a6"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.29/rankcli-linux-x86_64"
      sha256 "dc7f7413c430004805a688818ff2f8e0e39f860847749083bc23036580aa0fc3"
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
