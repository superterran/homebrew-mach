# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mach < Formula
  desc "Mach is a cli application for using docker to *quickly* and *easily* manage infrastructure and services through code."
  homepage "https://superterran.net/mach/"
  version "0.5.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superterran/mach/releases/download/v0.5.26/mach_0.5.26_darwin_arm64.tar.gz"
      sha256 "f9ff04ce8ffc921b4dc089bb8926572106221e193dc3fb76353a35fc7bdd0bb0"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.26/mach_0.5.26_darwin_amd64.tar.gz"
      sha256 "b24e9870f0344167171140a16a6226ecc402abb0bc6057b1d1da49080e631244"

      def install
        bin.install "mach"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superterran/mach/releases/download/v0.5.26/mach_0.5.26_linux_arm64.tar.gz"
      sha256 "fe6be60e1c57cb283fa4b3736267c421b8678026142e1fcedde2ab7226d0cd31"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.26/mach_0.5.26_linux_amd64.tar.gz"
      sha256 "374861548cb5de51fa9bd872af943b249ce1ab4925dfcf0549b2d0eda8b0fe59"

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
