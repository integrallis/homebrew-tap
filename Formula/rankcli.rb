class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.25/rankcli-macos-aarch64"
      sha256 "ec88a7928a5cac95f976f61bdfb85c4d1ebb6ea754e7d624d225f4e554f325a3"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.25/rankcli-macos-x86_64"
      sha256 "83e58638d0edf25d85ca3506bd7691159018d744866751489302dcba2f7e54cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.25/rankcli-linux-aarch64"
      sha256 "9410be46d06061caf980c312a4cd850794ffe0585cb6ede3f48eebf1f6c20924"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.25/rankcli-linux-x86_64"
      sha256 "dbbe6824a9c2d9c79e48dba65f45ab6f6ffca6f2fe218be7f98d0fc80ef3aef2"
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
