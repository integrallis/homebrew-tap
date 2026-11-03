class Rankcli < Formula
  desc "Ship code, get ranked - SEO/GEO audits for CI/CD"
  homepage "https://rankcli.dev"
  version "0.0.55"
  license "FSL-1.1-MIT"

  on_macos do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.55/rankcli-macos-aarch64"
      sha256 "72c1c6a2f5cdb576dea3d594c9b44ae2723a54f82b53586d5915a81c4c97e9d1"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.55/rankcli-macos-x86_64"
      sha256 "542b1453f7dbd07a27843a2445c3ebcb7e72c95d023d936a0f7cb3e3d430d677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.55/rankcli-linux-aarch64"
      sha256 "ee232b22fe271d9c604a4e33587e1edd7e440e8ac8485647b8c930fec630a8bd"
    end
    on_intel do
      url "https://github.com/integrallis/rankcli/releases/download/v0.0.55/rankcli-linux-x86_64"
      sha256 "156bf9b37c47a1818b713228a9cc972affcd0808146b53c187c9e740dbef20ab"
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
