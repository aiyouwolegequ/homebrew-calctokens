class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.3/calctokens-macos-arm64",
      tag: "v1.0.3"
    sha256 "19fb8cc6c2bb3a94ab4d69650946980c152d4987f38af34b8ae91125b12b51a2"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.3/calctokens-linux-x86_64",
      tag: "v1.0.3"
    sha256 "1c4067d2247bdddb87cfe66e5cffb1c3f0cecbfb138cd14ccd97d18287e159cd"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm target if target.exist?
    cp cached_download, target
    chmod(0755, target)
  end

  test do
    system "#{bin}/calctokens", "--help"
  end
end
