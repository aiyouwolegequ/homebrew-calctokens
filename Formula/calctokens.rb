class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.7/calctokens-macos-arm64",
      tag: "v1.0.7"
    sha256 "ef9f40246df16c94b4f1f6526ee3575829811498ee4288de34fc600208ef6a02"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.7/calctokens-linux-x86_64",
      tag: "v1.0.7"
    sha256 "da68e9dc208fe2eb97ab2d06d6f5049c17b23e170fdc9bf11030fbb26fb1b68c"
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
