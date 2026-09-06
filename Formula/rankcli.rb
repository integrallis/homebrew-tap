class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.27/rankcli-macos-aarch64"
      sha256 "b1f1ff6bd21da474364f7face2103bc5ee1ec6c3fe1bc1277629adb06c0f37f3"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.27/rankcli-macos-x86_64"
      sha256 "a9003789f90e65433fe68fe513a8beb10253b9026b6d996f9ce8c07d91ea0046"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.27/rankcli-linux-aarch64"
      sha256 "2d7cbb4380d714cc904b2b6f8e43a411f643b4edc2af75d54c5913cd403ac954"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.27/rankcli-linux-x86_64"
      sha256 "a97ac7b39b34d0b26669cf9858243f33e02bd51f0ac8dc4ac6d99c4367f908d7"
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
