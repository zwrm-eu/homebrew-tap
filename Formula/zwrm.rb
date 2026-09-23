class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.29.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.9/zwrm-darwin-arm64"
      sha256 "201871763e2aa718af97d9df9de8eed305424b1796e03026db9c7872ff6ca8c8"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.9/zwrm-darwin-amd64"
      sha256 "0d415e1849ab63d190867cc1cdb8ebae836700bd0daff36d61327a71cbfdb8d4"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.29.9/zwrm-linux-arm64"
      sha256 "78cd5e4128177a626e6f1a7527b2c4b8ac11cba28d0b115751a7c01a0b9c48ca"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.29.9/zwrm-linux-amd64"
      sha256 "a699a1a8bd02aca8569ef84567ca8017f9b3d37df4c7dd6ba7d5cd57a1768bde"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
