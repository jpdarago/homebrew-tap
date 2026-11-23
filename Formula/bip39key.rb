class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH/age key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.9.1.tar.gz"
  sha256 "8bd53b8454058b10e591b4aecc130a9441c9e19d72d404cdd2d0efe1eaa2e81d"
  license "MIT"
  head "https://github.com/jpdarago/bip39key.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bip39key -V")
  end
end
