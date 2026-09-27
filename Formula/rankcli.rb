class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-macos-aarch64"
      sha256 "1d83d16655351cdd3c6f93b9dc1e51dd35b05335c29e80a31ec009efc393d305"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-macos-x86_64"
      sha256 "04dc3fbe1b32bbc45e094fd4b87a9f6e20688023b9e531a38e08f40f443a432b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-linux-aarch64"
      sha256 "0b41ac54d987fb38427748b6c8ba8348c4bb7ec8a2105c14c0c71664b2bba52d"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.47/rankcli-linux-x86_64"
      sha256 "7679e1a1b790e0a2ad06635d9f0be7999a1e434b02c1e295b4377774c55c568f"
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
