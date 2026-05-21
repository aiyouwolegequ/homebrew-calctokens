class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.7/calctokens-macos-arm64",
      tag: "v0.8.7"
    sha256 "70fc937ffd857c21a4099cc8738179a89e4807b7ca2b034bb41758ea5873175e"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.7/calctokens-linux",
      tag: "v0.8.7"
    sha256 "a33d899b8245bb1d90e178ad00d04bf85b038a62ec0a7048f3accb07ecbad36b"
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
