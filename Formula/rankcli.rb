class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.32/rankcli-macos-aarch64"
      sha256 "9b527de84c1828a9ea693d7a52551c95528cfcea7bdd4b1f3b007182af0b5699"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.32/rankcli-macos-x86_64"
      sha256 "32361439d2dd3e0a8960d9e01f9500d93e5b79b131dafa9d08286c8f9ca3bd61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.32/rankcli-linux-aarch64"
      sha256 "ac28dd3135ef3288f80e613eba118cc079371f19d4f489e0f93f0f785975e4b7"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.32/rankcli-linux-x86_64"
      sha256 "c338c50135c4fe621fd9eb813792e45ac995eab1b09cb9d22f7a346483308d5e"
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
