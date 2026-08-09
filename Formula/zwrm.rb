class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.22.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.5/zwrm-darwin-arm64"
      sha256 "4f5f1156cafbe26bdecb9cc10943caa27813c9dfd7992b40ed4cd70bd0274f30"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.5/zwrm-darwin-amd64"
      sha256 "b08144b76bcd6d73c15e10d6edb096a15ab89d84b57ef3a6460ce7bf7dd636dd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.22.5/zwrm-linux-arm64"
      sha256 "8d77c464cf6bce208a968dba07059ca73b830fda8b425ea096f0051b7135499d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.22.5/zwrm-linux-amd64"
      sha256 "39555fc5caf6ca9e0e36e81a17ce5c5a8d0552e06e27832711b28ba98ab82140"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
