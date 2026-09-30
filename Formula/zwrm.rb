class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.25/zwrm-darwin-arm64"
      sha256 "7d13196cb86b72fcefd1cfd2570e91eb32e3379223f9f5439900c03f470e6a92"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.25/zwrm-darwin-amd64"
      sha256 "f1e075d88520d7c8456b2aacc8679ebf97b5048d93800c8a0b05fe9fd2304866"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.25/zwrm-linux-arm64"
      sha256 "1da26177f9aff0fde3cb12d17d24a5c50b701926acde8058b6c9962035585207"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.25/zwrm-linux-amd64"
      sha256 "4dd0ece9d0506a45bf652e28f4db049a9088e10d9be2fb7bfc100f4dacd080d7"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
