class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.6/zwrm-darwin-arm64"
      sha256 "40a36a62a333f2a0797f7be6a74e45fa77ac8e96ce08881865c2521230545dc5"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.6/zwrm-darwin-amd64"
      sha256 "b73eae48d9fdb40bb63ef7e713e655c839086cb1b71477a45081c05aa3e43c35"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.6/zwrm-linux-arm64"
      sha256 "91a8dcb596bf03694a90316837bcc17e7e94d95a6e610539cdb3e7c741e61860"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.6/zwrm-linux-amd64"
      sha256 "44833df418cb5441afbf79726c2a234694e4f55ea8c6c11ccf16c9de8a490e36"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
