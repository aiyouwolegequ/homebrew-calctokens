class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.9.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.6/calctokens-macos-arm64",
      tag: "v0.9.6"
    sha256 "31e9df8995c55e5145a5893285827534eca154d2bedd84458799f85e864ba451"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.9.6/calctokens",
      tag: "v0.9.6"
    sha256 "2ead26c2fc4a4d085eade27155ff1b9d5aa2158ee27e218df70f495cb4cc8f64"
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
