class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.34/rankcli-macos-aarch64"
      sha256 "fe7656db64588c054229fdd0c20196fbf89ed301b82a05a5a09ab4877a158a24"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.34/rankcli-macos-x86_64"
      sha256 "da6ec37b830531031a0ad4826107eb9d65d38bf615f447a14e959b1cc51e389a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.34/rankcli-linux-aarch64"
      sha256 "9961d0fededd534ca8bddc403a40a7b01bd1d52c0c3cdf0e022cc43e608761b6"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.34/rankcli-linux-x86_64"
      sha256 "310b9657d73263e629480901bb43ad312f1b47b039f53e04b996b0411e4a1888"
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
