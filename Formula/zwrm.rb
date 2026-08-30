class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.24.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.12/zwrm-darwin-arm64"
      sha256 "b1e2c33762161f2168cfb5a335e8b4ae757bafe1a721e57c7c12374d0ef19d20"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.12/zwrm-darwin-amd64"
      sha256 "461f847d0251088b20ddd3fe52df1c5704856abfac54a66bd25db64528d826d8"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.24.12/zwrm-linux-arm64"
      sha256 "8985360e192eb7d4cef7f4a27e74de3209f3385ba93220bda1025d1adbc58f65"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.24.12/zwrm-linux-amd64"
      sha256 "e9fe68520defb8fe9e9721aafb80bf6ade613b2a8a9a7ae04f32830704bf1d5d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
