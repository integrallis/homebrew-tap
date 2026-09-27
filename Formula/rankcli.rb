class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.38/rankcli-macos-aarch64"
      sha256 "8b351fe4aca4c7ab8c5828defb737974f67b3d43a32910f08a785dc4f3a8c454"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.38/rankcli-macos-x86_64"
      sha256 "a0d72a43677e8a36eb2ba79626cbfbf2e0efdf326de43fd118f0a8f95c3c33dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.38/rankcli-linux-aarch64"
      sha256 "0fc2427f96ad0f8c6788e0b55d0b678e55ddaa588601543ff1fd8b06441e48c6"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.38/rankcli-linux-x86_64"
      sha256 "b4572b3cc423d276cad73592a7a750fd5c71ff7229357fa4bbfbb857bccf0449"
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
