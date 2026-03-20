class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.1/zwrm-darwin-arm64"
      sha256 "470b854f19fecc3af536c90f3cd6224c6e0d9ac311da240fa679d92e46da30b1"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.1/zwrm-darwin-amd64"
      sha256 "304813efc01ba9bc1842a124614158a11a23a1745c56ddc8dee18bc763591cdc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.5.1/zwrm-linux-arm64"
      sha256 "57f5613b78808b8913f94421e476fff9f26af41d378563f505161aeaeacc68bc"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.5.1/zwrm-linux-amd64"
      sha256 "b72828158c24fb9087e829ee92815c809131266942547da8f8e942b82b34b790"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
