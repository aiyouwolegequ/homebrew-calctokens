class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.9/calctokens-macos-arm64",
      tag: "v1.0.9"
    sha256 "0f55c4063859d9e83b39b50cb84af4d9ef75789fdc96ba128ca973e76237599b"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.9/calctokens-linux-x86_64",
      tag: "v1.0.9"
    sha256 "375d68a4190a6896c84bd23ee336f404807cde349e85e86b852f4e3e6b9717f0"
  end

  def install
    target = bin/"calctokens"
    bin.mkpath
    rm target if target.exist?
    cp cached_download, target
    chmod(0755, target)
  end

  test do
    system bin/"calctokens", "--help"
  end
end
