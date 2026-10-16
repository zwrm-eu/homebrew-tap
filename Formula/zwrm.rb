class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.8/zwrm-darwin-arm64"
      sha256 "94d34be7fa83ac2ff6562c40aee83bd73cf0847b1ce837c97ccdf072a3e17422"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.8/zwrm-darwin-amd64"
      sha256 "c14db2a18d82bf777416b643db43b671957c8a97b7c0f7a75c9bc4278fef1e44"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.8/zwrm-linux-arm64"
      sha256 "44d5ab617c3ba575084f76006b06ffa9cd32644a59d8bca94f36140905969389"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.8/zwrm-linux-amd64"
      sha256 "7ae744d01d18ad324903fc9a905b453916d4de2f328675d319681063080960ac"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
