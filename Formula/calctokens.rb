class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.4/calctokens-macos-arm64",
      tag: "v0.8.4"
    sha256 "e6be0abc0085b2a596663fd972511cb4c37f40d0c99fab7a5844d43dec33f36a"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.4/calctokens",
      tag: "v0.8.4"
    sha256 "5733f9012665f1ef408fb78e7fbdc8ec8d58ff031f3b1b85e1ced938ddd5444e"
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
