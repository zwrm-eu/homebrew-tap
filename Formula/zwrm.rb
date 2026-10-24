class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.35.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.16/zwrm-darwin-arm64"
      sha256 "518cd7654db6c273e341e15e89d69d5636e405e37b0dbb9b8eaaa2952725c340"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.16/zwrm-darwin-amd64"
      sha256 "4ff0e8803c92b488b8bd96416fa7a783b96f9104e114a0cdeded0fbd91dd1702"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.35.16/zwrm-linux-arm64"
      sha256 "5fac13275a3041ee5a765d30009db7fdf1146c7ccdc9156c93a025d95b73cec0"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.35.16/zwrm-linux-amd64"
      sha256 "392cbcdeb331d6510acbf6cc314d00a0c27949eb85f13b71ca0b3ee73eb263ba"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
