class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.6/calctokens-macos-arm64",
      tag: "v1.1.6"
    sha256 "4a6144eaf63898a164e8e77c0473618f09c28a2ba8d368aa63e7961e7fee6c38"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.1.6/calctokens-linux-x86_64",
      tag: "v1.1.6"
    sha256 "32330a31ff61f2be26ed31c5a630ac7aa4268c2ddcc65da952e66d979a996fdc"
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
