class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.9/zwrm-darwin-arm64"
      sha256 "c9dd5725e1cdc466965003e7cea590e38c46bb3a3952207acad171b88c944934"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.9/zwrm-darwin-amd64"
      sha256 "613dfe34c9c25fc7723c3624d069f92d94f3f69fd3bdc072fc1e8e6c7822e093"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.9/zwrm-linux-arm64"
      sha256 "5d536dbfe4591cc4c384cd4a1e71d785ad7e4d06ee4453020c220d890b670c6c"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.9/zwrm-linux-amd64"
      sha256 "1136d895c309ce4098cd0f4273edf9b93faf2f44899877535c2b316d12b60d85"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
