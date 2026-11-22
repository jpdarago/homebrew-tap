class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH/age key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.9.0.tar.gz"
  sha256 "17abe69fe2b0fb6e906a0b1b355033424b7829793ec7ec742a6edcb1d3fe7991"
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
