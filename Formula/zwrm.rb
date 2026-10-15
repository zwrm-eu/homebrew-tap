class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.34.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.2/zwrm-darwin-arm64"
      sha256 "b41da1106d1cf4e672b67eae2ecf5f64bb2f0f8d742e4203c456064fd2ac19bb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.2/zwrm-darwin-amd64"
      sha256 "a2b6792a9362a5c2e7fe3604318b86a81ea07e42017c4bafac7a8d6e1f2d739c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.34.2/zwrm-linux-arm64"
      sha256 "cb183974598cfb7c47b8360a9410134628df2ba94eefae25a1a1be3325dce404"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.34.2/zwrm-linux-amd64"
      sha256 "bac3f029f55d0ce38f2fbb44b3085d4af2080a57443d755529120eb73c0292a7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
