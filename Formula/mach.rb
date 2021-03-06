# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mach < Formula
  desc "Mach is a cli application for using docker to *quickly* and *easily* manage infrastructure and services through code."
  homepage "https://superterran.net/mach/"
  version "0.5.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superterran/mach/releases/download/v0.5.32/mach_0.5.32_darwin_arm64.tar.gz"
      sha256 "111c5b251b65e9c9843a7053dca7e49239699fdf4870b1ea33f19cd15e31fd0d"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.32/mach_0.5.32_darwin_amd64.tar.gz"
      sha256 "40fa35de8b4bb259c008ede0754e97b2c9f2c75043cde7e6544aa25623949778"

      def install
        bin.install "mach"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.32/mach_0.5.32_linux_amd64.tar.gz"
      sha256 "acc6b58f3c58e26075cd4e789020818945f1e9ed6073ba5b66262cbb7b0b6e49"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superterran/mach/releases/download/v0.5.32/mach_0.5.32_linux_arm64.tar.gz"
      sha256 "0f4ffa65cfca324e3b100a35870c8dfdd79b3e267c85943191c6db02b784ad62"

      def install
        bin.install "mach"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "docker-compose" => :optional
  depends_on "git" => :optional

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  test do
    system "#{bin}/mach -h"
  end
end
