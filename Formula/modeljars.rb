class Modeljars < Formula
  desc "Discover and securely prefetch qualified local AI models"
  homepage "https://modeljars.org"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.12/modeljars-macos-aarch64"
      sha256 "c0be0b7e5875d5b39e5cd01312bbb7e46fb9d68d6014873c8833477eeb914952"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.12/modeljars-macos-x86_64"
      sha256 "084ae92dd8942f9bd8953e8878bc79521283066cb4b17fcbb43806fafef3d787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.12/modeljars-linux-aarch64"
      sha256 "d6f61c04e3930fc95ff7f7747072bbd6381a843459735a6934a2dc61f39feaf6"
    end
    on_intel do
      url "https://github.com/ModelJars/modeljars/releases/download/v0.1.12/modeljars-linux-x86_64"
      sha256 "7ebf97783305f8c0ba42ba870911fcb4dfa8dd9fae6d0660523b55ab5794e6bc"
    end
  end

  def install
    bin.install Dir["modeljars-*"].first => "modeljars"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modeljars version")
    search = shell_output("#{bin}/modeljars search fintech --color never")
    assert_match "king3djbl_nexus_finance_gguf_q4_k_m", search
  end
end
