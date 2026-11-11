class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.78"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.78/modeljars-macos-aarch64"
      sha256 "911e86e216631be102cd9004382a03f6d865d758568e2dd9b95d816d719d54cd"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.78/modeljars-macos-x86_64"
      sha256 "f8f70682f708ce0694ab61024503e09cc1082e55d46a000acfc7bacbeb03911c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.78/modeljars-linux-aarch64"
      sha256 "a1bd8a13952bd8e9c77f4ef047f30ca3661f34c52f53728725109c295b45be28"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.78/modeljars-linux-x86_64"
      sha256 "4e957709f61bf281a00a473ee0ddbc9b77462eab9e5ce29ff1eab6ad362c3032"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --output json")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end
