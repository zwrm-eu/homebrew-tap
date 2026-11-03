class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.11/zwrm-darwin-arm64"
      sha256 "4d7ad79fabf0b83daeb04994247bd51499b983c1b4aa0ac40e48c1f3233dc5dd"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.11/zwrm-darwin-amd64"
      sha256 "73dacfa42ac6943cd50da426fba6c6553e3474e2ddef9ab941807ad69442fe74"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.11/zwrm-linux-arm64"
      sha256 "cd8d1581e8f2900ecb54db67675f2e9414cd3b12d68a69aa4759b06b37397c2f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.11/zwrm-linux-amd64"
      sha256 "9d66ca99eff890260510e98e8dabe526771eeb2790798e9b26ea93c88b97fe82"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
