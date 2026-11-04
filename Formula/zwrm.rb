class Zwrm < Formula
  desc "CLI for deploying and managing microVMs on ZWRM"
  homepage "https://github.com/zwrm-eu/zwrm"
  version "0.39.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.13/zwrm-darwin-arm64"
      sha256 "c1132d65e9a854193c3d4aef5ae942db9ce8f288de54579679dd7d91058b5d51"

      def install
        bin.install "zwrm-darwin-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.13/zwrm-darwin-amd64"
      sha256 "6fbeeb195499c21ac18f132a2b3787c8a79863a8fb72d88b2353ab5a47f09746"

      def install
        bin.install "zwrm-darwin-amd64" => "zwrm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://releases.zwrm.eu/zwrmd/v0.39.13/zwrm-linux-arm64"
      sha256 "d314b28c45f4694c8aacdb1e392904347cf01c436ee5142a2afc950bc958e097"

      def install
        bin.install "zwrm-linux-arm64" => "zwrm"
      end
    elsif Hardware::CPU.intel?
      url "https://releases.zwrm.eu/zwrmd/v0.39.13/zwrm-linux-amd64"
      sha256 "9a9eca4f518d2a7454a75077ca749746c7fd7f4d198a19fa04b0eacfee2a730d"

      def install
        bin.install "zwrm-linux-amd64" => "zwrm"
      end
    end
  end

  test do
    assert_match "zwrm", shell_output("#{bin}/zwrm --help")
  end
end
