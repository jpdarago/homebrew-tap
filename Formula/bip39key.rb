class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH/age key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.9.2.tar.gz"
  sha256 "f62132f47bbb95907621d2959337c73516e77662ba21d826075354318b6040bd"
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
