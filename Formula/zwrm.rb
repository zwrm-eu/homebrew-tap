class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.36.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.9/zwrm-darwin-arm64"
      sha256 "f10ba00104e4b0058e5df349dfc2f62a192ce53dd00e3de5ce7eab0da8f2f0cb"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.9/zwrm-darwin-amd64"
      sha256 "9f9894bd26c69082e40cb3829ac7ad0f58fbbdf51a05fc26ca9e7d05a9e6c797"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.36.9/zwrm-linux-arm64"
      sha256 "4d970c8af4d9d247f6e8060ea8ed64140e74f9ef214e902f54602e80d3c8c826"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.36.9/zwrm-linux-amd64"
      sha256 "f9a8f9b7f3345f2890148bdb6a122086fc491832a7bed7ca3b62790a3fd1ad70"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
