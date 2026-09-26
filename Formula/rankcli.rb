class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.37/rankcli-macos-aarch64"
      sha256 "ed192989eee786d6c746d60949600a4baf746bee7733f036eaaa3610dac73b3c"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.37/rankcli-macos-x86_64"
      sha256 "ed5b67d82e803e935e60df09ef2665bbca893397a9cac07f127b1a1c6c71b7d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.37/rankcli-linux-aarch64"
      sha256 "ed2a0a75f50b3e20a4b0a4b9d7b3c6f5d2b603bb5bc8461547165c48fa4ac60f"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.37/rankcli-linux-x86_64"
      sha256 "d7f5e57fa4acf66539c9206e1c2b57061582d398193edce95d41f912474ace42"
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
