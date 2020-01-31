# This file was generated by GoReleaser. DO NOT EDIT.
class Clamp < Formula
  desc "Clamp is a useful tool to help to replace environment variables in any file using go template syntax."
  homepage "https://julienbreux.github.io/clamp/"
  version "0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/JulienBreux/clamp/releases/download/v0.6/clamp_0.6_Darwin_x86_64.tar.gz"
    sha256 "a4302e38b11058bfc8a5d24748247817d80bdcb6c7132ef231afe21d803e4f68"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/JulienBreux/clamp/releases/download/v0.6/clamp_0.6_Linux_x86_64.tar.gz"
      sha256 "3af83c09d2088a2dd89776d49f8935613b6ff18107ef9239c81e6e4673923cf3"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/JulienBreux/clamp/releases/download/v0.6/clamp_0.6_Linux_arm64.tar.gz"
        sha256 "afa5958ad658aac023ae10e7357681cce27b1d4661ece628aa4be1b9a95f671b"
      else
        url "https://github.com/JulienBreux/clamp/releases/download/v0.6/clamp_0.6_Linux_armv6.tar.gz"
        sha256 "8aecc923d18ba803afc83bf3b97963dfc74af3f85322ac4d89ca43024da48e15"
      end
    end
  end

  def install
    bin.install "clamp"
  end

  test do
    system "clamp -v"
  end
end
