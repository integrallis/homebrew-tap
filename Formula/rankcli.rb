class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.49/rankcli-macos-aarch64"
      sha256 "71545dd68e35813a4b359ecd0e165cce489e296e9ddb2a666a3cf2882437a71e"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.49/rankcli-macos-x86_64"
      sha256 "3ab928c30081f41f33f5e9b9a48cc962c6c3267230548625375a2c37191f9cd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.49/rankcli-linux-aarch64"
      sha256 "dbc11a3727ff4513ff8df1b48825789842187402e24bfee48b979df1c02d18a4"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.49/rankcli-linux-x86_64"
      sha256 "360171519c1073ca0c3b377b3cdecc16da6d5f2ca25b45b95bc4e0bf190854f5"
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
