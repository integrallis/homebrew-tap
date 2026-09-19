class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.33/rankcli-macos-aarch64"
      sha256 "5862839a08604c18f7631d1fb6782e31881f9af7d02365c75e027cbf9a785d16"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.33/rankcli-macos-x86_64"
      sha256 "29b9a0ff89169b9b7f33c6d82978ce96e53352ae96e10dc451588d38a4dfbdf7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.33/rankcli-linux-aarch64"
      sha256 "1f6a824a0e4633e7285320f06baf1ea81a656c4f505cacaf8ec81d1379b2cc66"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.33/rankcli-linux-x86_64"
      sha256 "7cc89246bb138f05ac2f24f87bc7ee58830d9042026a1a721d85b51864c4431e"
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
