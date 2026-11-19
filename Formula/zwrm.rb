class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.40.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.3/zwrm-darwin-arm64"
      sha256 "cf0add21f7e5df7a9c9d759a801e77d022743e379db813106634d302259c4d7f"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.3/zwrm-darwin-amd64"
      sha256 "01c7e0f4dab88e4eb1dcad5ca0914123b1f56e6047ffc102293f4e8ab4585761"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.40.3/zwrm-linux-arm64"
      sha256 "76c60e6d57dd24dea9202c0842416cfa4c38efe7c596170e4496dd9c19584a4f"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.40.3/zwrm-linux-amd64"
      sha256 "cd5f5d891ed48452a9b723a3d27b5e77dad0321dee7381b543ed7686024faf9b"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
