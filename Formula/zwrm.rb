class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.31.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.1/zwrm-darwin-arm64"
      sha256 "c046f91c1d53f57a01ab49cdbd6217b2fb4243cfa08d32101221a3230e7e0ccc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.1/zwrm-darwin-amd64"
      sha256 "778cf2864e2df3481e9715df6a677781d7567d07ae50db71af973c3caca627cc"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.31.1/zwrm-linux-arm64"
      sha256 "e92cf4ab33e2066ed1052c3967919048605333f4455cda2eb6e1cd3892c30be3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.31.1/zwrm-linux-amd64"
      sha256 "645b037da2b0c152cc6c815314684c3dd0726f357baf9717e077eebb0e38f48a"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
