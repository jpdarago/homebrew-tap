class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.8.2.tar.gz"
  sha256 "46575e09641a7c100c138ac99ca47de1e2cee2e6a1b9e7798d9cee04bb8fb01d"
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
