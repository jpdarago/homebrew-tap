class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH/age key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.10.0.tar.gz"
  sha256 "02e7da5a1ef5684c22fa37de815f4bee861879d28e4a801936c6b944e7ac1ed3"
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
