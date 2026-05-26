class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.4/calctokens-macos-arm64",
      tag: "v0.9.4"
    sha256 "3f1170ca6afe3106100c966f1d3a4fb87fc5f706dbf8df0b011dcae9a6455158"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.4/calctokens",
      tag: "v0.9.4"
    sha256 "4e49eb063e16650c22ce97d6b437cc9a0239206fc29741e09ab63f2583c0634b"
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
