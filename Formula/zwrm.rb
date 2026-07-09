class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.15.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.15/zwrm-darwin-arm64"
      sha256 "2a9700cb2af87aaa21583c35671c712472ad5bd9e6b357beeadf576268fdb5dc"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.15/zwrm-darwin-amd64"
      sha256 "21062364caa96b710def9cbe92c2a97b831495885dab9a1f7a5fabb8e076fee7"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.15.15/zwrm-linux-arm64"
      sha256 "bb261e64266e6401ae09c4f040f1cd63ba45daba5103c90f70807fafbe687498"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.15.15/zwrm-linux-amd64"
      sha256 "8423b2518905c8c370d1b037972999768743ba35a9b3f40d56e594f769b12f9d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
