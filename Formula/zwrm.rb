class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.2/zwrm-darwin-arm64"
      sha256 "bc921eca2b603ca7997b6f47c8b6e305121bf7c3b3c89d743ef878d33cf5ce4d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.2/zwrm-darwin-amd64"
      sha256 "fa0123bc51bbdb8f9867dc695baa5331c0eafd7ce8165dcd90815468393e69bd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.2/zwrm-linux-arm64"
      sha256 "9784251df3fd7d33b4511a66760272b48c07f0daf97de8238aecc53020b24cf2"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.2/zwrm-linux-amd64"
      sha256 "02f902e9971b6fb560c225e41a63896f0d1c85c6c99cd987062452b7347019fa"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
