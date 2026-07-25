class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.1/zwrm-darwin-arm64"
      sha256 "c3afd77718e242165538a10541fb8a54c23f33774c831b5dd82e5ad2312978db"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.1/zwrm-darwin-amd64"
      sha256 "c84cc9304574434ee7c59e72c8f80f22da16d574da608d5ed5f944f81b0bfd8b"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.18.1/zwrm-linux-arm64"
      sha256 "daff2235c1908ad30b8edb182477eff6ea44ac6425195f5c6bd2b7163034089a"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.18.1/zwrm-linux-amd64"
      sha256 "c55575bafa31bb02a3b64948274a1d4d6335f1ec575d251f70b8ffba564bc61f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
