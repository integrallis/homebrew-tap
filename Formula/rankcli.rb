class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.48/rankcli-macos-aarch64"
      sha256 "096ab5214cd875957723d57a4b87f59a4ee618d1e432dc802a87614eccffebd1"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.48/rankcli-macos-x86_64"
      sha256 "ef74e720e02680a2cfa5eaff331bfe700d06b5fc30da8c752db9c13497280251"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.48/rankcli-linux-aarch64"
      sha256 "15acacdd03bfa780d8e5f00f2d1edaa35269993a9e169b8d80cbcf2ce622d65e"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.48/rankcli-linux-x86_64"
      sha256 "b9e5b133eebd23d8aeec2dea0901556085bfe8edec1b297c2e3286efa58febe1"
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
