class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.5/zwrm-darwin-arm64"
      sha256 "ae314df92a4fb66a24f0679fdeeed701267764318128f2a859fd9b303ced98e2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.5/zwrm-darwin-amd64"
      sha256 "aef9924ecba39c02eed5a35bdb2984acb2a2456bfd0c2330dad1b6c58f6022cd"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.5/zwrm-linux-arm64"
      sha256 "4f12ddf1c5ab29cb79af52263a7f0fa5166917b665cbf05cb09d6a67bee7cf1f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.5/zwrm-linux-amd64"
      sha256 "a8410f37004ee8ac4b8c8a11cdc5d7bad10427b842c4f20fe82e7671d827b31c"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
