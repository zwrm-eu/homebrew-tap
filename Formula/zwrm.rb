class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.8/zwrm-darwin-arm64"
      sha256 "74597b1724c0da09ba55621c1c75235b6282d02cec04e0261c14fbd412e4d5c2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.8/zwrm-darwin-amd64"
      sha256 "b589595e7d4f7599aa4d2564930fd5bb5f25aa5b450da63ea8db106ac866ba44"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.8/zwrm-linux-arm64"
      sha256 "6b1335e02f45c1c0ecce62e9cfd090d6687979eef38af1f6ef3048a4b70d4ce3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.8/zwrm-linux-amd64"
      sha256 "f3fb8dbba9ac51ad71e6b98765f129fc746b007447bac8bf80952b3160e1920f"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
