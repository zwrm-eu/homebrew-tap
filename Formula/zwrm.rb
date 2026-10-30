class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.37.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.2/zwrm-darwin-arm64"
      sha256 "1b468a7247c642810bf91a680ca2416649ab52fa1780b01eba541fd0662ba060"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.2/zwrm-darwin-amd64"
      sha256 "107823efae063d6ad27e29cff15abb8ee7470116bfa04bb4a3f53d0e7719ea87"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.37.2/zwrm-linux-arm64"
      sha256 "d646db707bea01fcbac977e5a0b74ece5a13387ae6a24c9e03037fd95d8d9328"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.37.2/zwrm-linux-amd64"
      sha256 "94bb42a734dd70eebff16cd33421b23ccb9f0eb39f06bee2f2a0d6b479d3e987"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
