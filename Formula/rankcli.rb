class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli.dev/releases/download/v0.0.22/rankcli-macos-aarch64"
      sha256 "b1fe91b0e3cc5dc3a93912f021334d58b492fc849e6f00d544df1fef01ca976c"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli.dev/releases/download/v0.0.22/rankcli-macos-x86_64"
      sha256 "d1f9f3b8552f4a1a8d55c432d5a8078ac0709f25709221d0aea613137a4b31a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli.dev/releases/download/v0.0.22/rankcli-linux-aarch64"
      sha256 "dd62ca844d1d7cdf9cc52ccc6bf374b6fbb775129632d4df3bc9ef0e1e807bde"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli.dev/releases/download/v0.0.22/rankcli-linux-x86_64"
      sha256 "e53a5ba2e1dd306806693957e6585961b6f5381f9c4eae063ce4df16f060feb8"
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
