class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.44/rankcli-macos-aarch64"
      sha256 "58a68493457e449b25ca0963c8f121dba8947978988c1be408fff9bcb22e3090"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.44/rankcli-macos-x86_64"
      sha256 "03067c7b812092896a8f68aaabb61c4daea64681fb002876d8ef5297b8f96d29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.44/rankcli-linux-aarch64"
      sha256 "0453a2c5e33e92af310163f30333a74d459b2bcb0dc8d89c1e36639a5bf3c156"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.44/rankcli-linux-x86_64"
      sha256 "d08cdd7c0a1efd5ee7f24f9ff28519d95af5665cebf759a8f097a683073ca2d6"
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
