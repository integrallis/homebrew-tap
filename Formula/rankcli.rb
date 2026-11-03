class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.54"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.54/rankcli-macos-aarch64"
      sha256 "6b37d08b6ba4caffd0ffeb9be53fc4cb54c320d83540bf7d6d7261d803584ac4"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.54/rankcli-macos-x86_64"
      sha256 "1cd4b53aac93c066d31e02d33e72659cdd2552e86afd3e8a6c5fa4387d64039f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.54/rankcli-linux-aarch64"
      sha256 "279aae84e495270993a1700f397f0515f5b0a1c3ca2624090bd0ed3f03aa8957"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.54/rankcli-linux-x86_64"
      sha256 "cec1cb40f3e46ee8aebebac46f0525dac2f1608c5067af72130217256e5a154d"
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
