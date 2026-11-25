class Bip39key < Formula
  desc "Generate an OpenPGP/OpenSSH/age key from a BIP39 mnemonic"
  homepage "https://github.com/jpdarago/bip39key"
  url "https://github.com/jpdarago/bip39key/archive/refs/tags/v1.10.1.tar.gz"
  sha256 "2a3c2397ff2eb21a345f7aaccc4041222dfc7c4b0959001d76e0801d94d1e08e"
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
