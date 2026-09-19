class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.31/rankcli-macos-aarch64"
      sha256 "ab8e612d5973e24d803d3ad115b2622e413e8a0e6d1c4791a554e5e6740a8286"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.31/rankcli-macos-x86_64"
      sha256 "df11e6843e60fe38bc6f1655af0ac2222b00ba1167c0fb15d07381124e2c0a8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.31/rankcli-linux-aarch64"
      sha256 "b4d880a28b49c01ff338921f8975cde96ab8ca6911e58b2f910f523ee6b391c8"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.31/rankcli-linux-x86_64"
      sha256 "931e32a7ce59763e85dc8bf4ccc4442da6ecbb0e17d8c66aad57f9ab85a17205"
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
