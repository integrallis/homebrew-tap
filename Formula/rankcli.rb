class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.24/rankcli-macos-aarch64"
      sha256 "b1b444859ca5c1964f0b7ffd913008919224789f81a7645ee53ae8f58c3d544c"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.24/rankcli-macos-x86_64"
      sha256 "cd8c8315d585b9d5b1ef3f7227436db16614484d595ab131a63c477acd8fb95e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.24/rankcli-linux-aarch64"
      sha256 "fac91e0190882bff28fdcceda594a6a948f9477d2263fa3445887af3781df3f1"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.24/rankcli-linux-x86_64"
      sha256 "68cbc2dc22b79ce1444c731d934deb275db97e9060f711e6f3242b81f3784f4f"
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
