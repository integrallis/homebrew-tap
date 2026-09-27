class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-macos-aarch64"
      sha256 "68e05eaa28a78ccd1a33cfa2254fb29d5b774ab501423a0d2233ce6ee8deee27"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-macos-x86_64"
      sha256 "9fd82e069eada00597977d32b5b1458a562af2d7cb40146d9961d210903676eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-linux-aarch64"
      sha256 "1d13a4087d78fe141ce988f3afddd05276db569495bba65bc7d81d3f8ba8cf74"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-linux-x86_64"
      sha256 "9f6fdcf210491a36601454c683680b124e4326512d799b8fb22ed69665840be1"
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
