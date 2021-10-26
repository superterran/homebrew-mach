# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mach < Formula
  desc "Mach is a cli application for using docker to *quickly* and *easily* manage infrastructure and services through code."
  homepage "https://superterran.net/mach/"
  version "0.5.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superterran/mach/releases/download/v0.5.25/mach_0.5.25_darwin_arm64.tar.gz"
      sha256 "b0852e9ffe9bb7c2710a64c4438b6fcf37846d863b1c44c20fb1cc50ec6ca244"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.25/mach_0.5.25_darwin_amd64.tar.gz"
      sha256 "4d46da7925036e6f83c95003024720706380a4e1b1803e1f6b27cd937cf97a52"

      def install
        bin.install "mach"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superterran/mach/releases/download/v0.5.25/mach_0.5.25_linux_arm64.tar.gz"
      sha256 "1572db7788be1d196f9e07f587b0b3effbeca746e2f06cc379d4d19cbbcac5ff"

      def install
        bin.install "mach"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superterran/mach/releases/download/v0.5.25/mach_0.5.25_linux_amd64.tar.gz"
      sha256 "aae90b78f4adb13137f6598028bd5692fc8499052f248ca91261b7b9103b2f98"

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
