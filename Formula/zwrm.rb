class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.0/zwrm-darwin-arm64"
      sha256 "8b60a87e1ad5bb0af4df195ccc5f2097e5dadc8f67984d795e17b586751e4705"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.0/zwrm-darwin-amd64"
      sha256 "1a9fb24916030c814a57566e74e8f3d283af439c1126b33815208247673bff6c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.16.0/zwrm-linux-arm64"
      sha256 "a6c56513240ff4542fd82e1a7e075a01431aa3265053757713d907a170f3d948"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.16.0/zwrm-linux-amd64"
      sha256 "6e88a235b8dae1acb86a330261fe0dde63ca290ce9b544f9b8542e1935b502d9"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
