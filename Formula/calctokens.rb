class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.1/calctokens-macos-arm64",
      tag: "v0.9.1"
    sha256 "a1f11df08669bef34aa2775d5538325fce69abf35d0d85e05682f76d94ce784c"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.1/calctokens",
      tag: "v0.9.1"
    sha256 "188e71d4de30756d4421bfbc95551a3877e2ebc24b985320b8751102017bb26c"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm_f target
    FileUtils.cp(cached_download, target)
    chmod(0755, target)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
