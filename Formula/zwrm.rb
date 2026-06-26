class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.11.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.10/zwrm-darwin-arm64"
      sha256 "0443894569cf24f367fd4050a45549a49500fa70d6fb58e527592c4ada23e5ff"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.10/zwrm-darwin-amd64"
      sha256 "fd18dc3d577c51886d57d19c0a6eee6b6335d2c72c109361f7b291777f467e9d"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.11.10/zwrm-linux-arm64"
      sha256 "a04e67b08355314eff86a102e3e9a3e70b76e21d4c3ec3a688cb81a32276b373"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.11.10/zwrm-linux-amd64"
      sha256 "27466d93ddedf17668101d9d54cd126489d801411083b5df5e9915ef32af4766"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
