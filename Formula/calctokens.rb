class Calctokens < Formula
  desc "Token usage report powered by calctokens-core with K/M/B units & RMB conversion"
  homepage "https://github.com/aiyouwolegequ/CalcTokens"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.6/calctokens-macos-arm64",
      tag: "v1.0.6"
    sha256 "1df6841955e647f5c549552d22344351989e7ff372932b5e21bff381fd6bdd61"
  else
    url "https://github.com/aiyouwolegequ/CalcTokens/releases/download/v1.0.6/calctokens-linux-x86_64",
      tag: "v1.0.6"
    sha256 "717aac4822de843d4affdda0a630fe95841410c320543e94c64883f6881e407a"
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
