class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.50/rankcli-macos-aarch64"
      sha256 "32cedbeb0db097a5b84d5109fac7e59646136df88c6905678886f0ae64e1f305"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.50/rankcli-macos-x86_64"
      sha256 "594263aee99b20b9dc6e5d41c9c907b05a4d4ce0acc3173ec6201fa2b7c6b308"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.50/rankcli-linux-aarch64"
      sha256 "4b7be936314309430efff7ebd103e469c3c708ca226c06694a08c3d21f00ebb8"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.50/rankcli-linux-x86_64"
      sha256 "54b614d2058b9783b47f485c14d86c8c845097bac278b071e07bcd1de9d1f3e2"
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
