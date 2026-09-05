class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.26/rankcli-macos-aarch64"
      sha256 "86638f29c1b6cee69d415b8b7cda2c57eab8b529926d2e658c8446335867f80f"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.26/rankcli-macos-x86_64"
      sha256 "1f9617d3e09ddb9a0a20f440364ccc7c1766cbe710bcf2c96896fecf17e19a51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.26/rankcli-linux-aarch64"
      sha256 "45a845821019786f580aff78f8cc7c1e4f24f28556473ff41b479024c2df626c"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.26/rankcli-linux-x86_64"
      sha256 "973dd6829dd0d37d31910dccdd0196360f778a02962c880218634ffcd59917c2"
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
