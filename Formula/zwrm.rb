class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.28.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.7/zwrm-darwin-arm64"
      sha256 "8dcbd59db1088ece256c22f7037860f4356e7075bad9d17b62458992bf276956"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.7/zwrm-darwin-amd64"
      sha256 "396fa0b92c1e08c5cbac448d293232192785b21b0d81dfe7d50264ddec6d0503"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.28.7/zwrm-linux-arm64"
      sha256 "a6bc05021c55b610ed7c346584b8bf78861e778ee57a99dc1824d6bf8c134e4e"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.28.7/zwrm-linux-amd64"
      sha256 "1ec5ffec7363f225e69ddff368e6e64b92cd03379513c738f859881338100809"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
