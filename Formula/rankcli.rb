class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.41/rankcli-macos-aarch64"
      sha256 "082476afb71d10727485497f2a9aca823b25ccc910ebc0719ed488abff7a02bf"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.41/rankcli-macos-x86_64"
      sha256 "ca16e3ddd8a3fa01c3f69b60640d6d601e9b27d61b180b06d0dc2d43e7cdc5a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.41/rankcli-linux-aarch64"
      sha256 "4c564677e8efcd8cd0b18d607cc19e6e8ea76110d12054a0c38c10936af48218"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.41/rankcli-linux-x86_64"
      sha256 "9f7d84a771f098580243cfd0a9d8965c148217671647be18fe9050028a4fa2af"
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
