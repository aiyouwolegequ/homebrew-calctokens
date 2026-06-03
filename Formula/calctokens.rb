class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.4/calctokens-macos-arm64",
      tag: "v1.0.4"
    sha256 "fa79ede3c075da1c5af21cbfa1e30151561ca9b1c894955ee6c0705709cb3124"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.4/calctokens-linux-x86_64",
      tag: "v1.0.4"
    sha256 "a88aa746a2ea0fb4cf658e8950c9604a0ef2a053b1deb06c88abd07abb99bd4d"
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
