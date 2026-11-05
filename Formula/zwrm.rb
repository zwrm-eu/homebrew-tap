class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.25/zwrm-darwin-arm64"
      sha256 "d0c571210d68c2b0576b537bdedb2cc234bd863d2c9f6761266d3963a1b5ce4e"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.25/zwrm-darwin-amd64"
      sha256 "fa6ac1ac0476ea0d4cded01aeba45b8bba637811f43e0f9b1e4ed13cbc9b71a7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.25/zwrm-linux-arm64"
      sha256 "efa15c016b26683aa0bde6971d31f9c4bbb78800334e17b9394af13898c86f5d"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.25/zwrm-linux-amd64"
      sha256 "f33138214bae749705d4b0a11d17bf1505efcebbf91f07473813afb1c5145f9e"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
