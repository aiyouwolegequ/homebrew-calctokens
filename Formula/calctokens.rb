class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.8/calctokens-macos-arm64",
      tag: "v1.0.8"
    sha256 "236434d548500da84821e23521b60d358af2ef8df61faa4f57862c202e5fbf22"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.8/calctokens-linux-x86_64",
      tag: "v1.0.8"
    sha256 "9c7d50b59c3f9f211c6effbe9401448acc34306bcf90ccd084086ecbc4857c71"
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
