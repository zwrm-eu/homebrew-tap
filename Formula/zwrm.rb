class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.38.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.2/zwrm-darwin-arm64"
      sha256 "8d45e7bf8edee855c68828cbd3aa24c51c63cd775d00fc45a568a52936dcd6c2"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.2/zwrm-darwin-amd64"
      sha256 "fe3aa14b69032c90b427fa3ecdd1119db60f64a66de0c7555c19a5ca05c1ab6c"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.38.2/zwrm-linux-arm64"
      sha256 "27503e125a1391d6006abb289991a3b6a1610c38e1529109a05b19212095dc19"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.38.2/zwrm-linux-amd64"
      sha256 "c65b13d39df29ffc61f3f90a3f033db268adb6cc4fe4fca13d0d7987879c50c4"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
