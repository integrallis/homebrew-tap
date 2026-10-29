class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.51/rankcli-macos-aarch64"
      sha256 "b1d52007c26d29b7b300a09c8c2987e73bc07318a1175ae8ecdc53752ec00810"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.51/rankcli-macos-x86_64"
      sha256 "9013f5cf9e24d2b557098a60106a774de260849d2d4d5d3e96e67549d40b3adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.51/rankcli-linux-aarch64"
      sha256 "f420044cc066094a6d75c383fdf9dc660692bf081076d13c25d9450f4595d8e5"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli-cli/releases/download/v0.0.51/rankcli-linux-x86_64"
      sha256 "c1da5302e8fe905cb18693f6187afc7bc35bd473d6e53f9e64cadedbebf044cd"
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
