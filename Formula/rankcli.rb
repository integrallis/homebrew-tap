class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.43/rankcli-macos-aarch64"
      sha256 "0d67afcf8225f7532b29dc555b10dc5c23fe665e6f3eaa65222869554a4be855"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.43/rankcli-macos-x86_64"
      sha256 "abc536493872b8b0a216496aecf54960827f2411a5374a0261f3af2b4c1bc906"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.43/rankcli-linux-aarch64"
      sha256 "945934fddb62f8f37422813ab9b289d8e477feadf3b871404eaf43153852a982"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.43/rankcli-linux-x86_64"
      sha256 "91d9434f4249a7586360f8924d87e4eedb9ee845156e8ee4a456ea3782737cfd"
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
