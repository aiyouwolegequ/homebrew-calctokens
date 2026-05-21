class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"
  version "0.8.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.5/calctokens-macos-arm64",
      tag: "v0.8.5"
    sha256 "826bf8e849f463a77c5386648694c16717b208d545fab3ced4f62311bbe8a95b"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v0.8.5/calctokens-linux",
      tag: "v0.8.5"
    sha256 "80b701adc3e740136c338ce9c25c4bf9f534de14abdc5122b53af81411e5db79"
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
