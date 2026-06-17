class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.8/calctokens-macos-arm64",
      tag: "v1.1.8"
    sha256 "322afa38a527fa1c6bb66a37ca10cae05ec65cd390ceddf14fd513ccd553fde7"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.8/calctokens-linux-x86_64",
      tag: "v1.1.8"
    sha256 "bd28b53e921ed0193bc94dd89809d6cf1b6b48d309aabbd0a010fc8eccb66d1f"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm target if target.exist?
    cp cached_download, target
    chmod(0755, target)
  end

  test do
    system bin/"calctokens", "--help"
  end
end
