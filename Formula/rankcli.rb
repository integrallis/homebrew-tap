class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.57"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.57/rankcli-macos-aarch64"
      sha256 "b3265572d9f22f3895d699ba5a40c0afc1e9733255d8bf44afeb2a35593cdb04"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.57/rankcli-macos-x86_64"
      sha256 "b3c6d298e9f299cae73ac46de045d0bb277957145e96dfcf592f7f26beeb2af1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.57/rankcli-linux-aarch64"
      sha256 "e6ead8ba6f4c3552581b9d7af65187e4ef28d62044ccdf4ad11f783b32a704e6"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.57/rankcli-linux-x86_64"
      sha256 "db1353883c28c87a317f87171b8583ba552e5190ab31a936c5bb00a88f4839e6"
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
