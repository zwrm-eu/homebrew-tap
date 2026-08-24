class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.23.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.10/zwrm-darwin-arm64"
      sha256 "9eec458631f422c7b6923d5513ef8d8e2f4e907ddbc103bce019fec12589b91d"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.10/zwrm-darwin-amd64"
      sha256 "b5d6e4587788e12af4972e21ab3b9d208e02bcbba93b1882d29096f842793b84"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.23.10/zwrm-linux-arm64"
      sha256 "d744f9253df4ce3e592aa9eadc13e42ba7c3dac0b15fa2abbdfe798bbb9c56b3"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.23.10/zwrm-linux-amd64"
      sha256 "e434754422e4f257046756bd724b1bd394a3f7e4cb419868480d7dc344f8e774"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
