class Jencrypt < Formula
  include Language::Python::Virtualenv

  desc "File and directory encryption tool for automatically mounting data volumes"
  homepage "https://github.com/JamesZBL/jencrypt"
  url "https://github.com/JamesZBL/jencrypt/archive/2.0.9.tar.gz"
  sha256 "a64d2b3b931cc26250f849c5c3b8c3bbc304744af37c9debf268e98a298aaa2c"
  license "Apache-2.0"

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/3e/25/73bc1b9a45686d304848cdc59741e357df7af8858a116c478c0a3eb8c4a7/watchdog-2.0.1.tar.gz"
    sha256 "0d1c763652c255e2af00d76cf7d05c7b4867e960092b2696db031f69661c0785"
  end

  # depends_on "python3"
  def install
    virtualenv_install_with_resources :using => "python@3"
  end

  test do
    system "true"
  end
end

