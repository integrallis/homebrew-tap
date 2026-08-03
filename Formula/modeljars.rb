class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.5/modeljars-macos-aarch64"
      sha256 "47011a70895fa3555038304fa9a823150e9913284649885fd53f2d46fce84461"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.5/modeljars-macos-x86_64"
      sha256 "b6bb41e7627bbb69684d5b4eb5a3000fef38f5652cb1f2064855212133c1f869"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.5/modeljars-linux-aarch64"
      sha256 "678de1ec5bcb4eb22e17529c1b2b5bc403d67f7b23894c88e5856ae31206ec21"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.5/modeljars-linux-x86_64"
      sha256 "5d42e444e04530d28193bfab1d47b97db548050a9b4ada3348b5cc01137c82a7"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    assert_match "ALIAS", shell_output("#{bin}/modeljars search gemma")
  end
end
