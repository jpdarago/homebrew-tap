class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.5.2.tar.gz"
  sha256 "bb40997390bd9a0aab9e17e90113b4c321440ceddbbb0c2e52c3ff4e84efc922"
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
