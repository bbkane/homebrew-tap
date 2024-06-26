# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shovel < Formula
  desc "Example Go CLI to model tooling"
  homepage "https://github.com/bbkane/shovel"
  version "0.0.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bbkane/shovel/releases/download/v0.0.18/shovel_0.0.18_darwin_amd64.tar.gz"
      sha256 "889c980ef4f752fe88cfa5c498ccaaa8f4b58c870992f2d6c5615eaa65f10747"

      def install
        bin.install "shovel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bbkane/shovel/releases/download/v0.0.18/shovel_0.0.18_darwin_arm64.tar.gz"
      sha256 "f7db4287130f91f29ab38fd3a5018e9e9cfacf69cde0de189a80adf35084b404"

      def install
        bin.install "shovel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bbkane/shovel/releases/download/v0.0.18/shovel_0.0.18_linux_amd64.tar.gz"
      sha256 "dd5b72be7a25a3ceadd54b66bb45af33af05d4fb10184d6f9d1494d3bc93e749"

      def install
        bin.install "shovel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bbkane/shovel/releases/download/v0.0.18/shovel_0.0.18_linux_arm64.tar.gz"
      sha256 "8cebd34cbc29c5ae86c6fb3e14255c8031d5cf31bd2b72a82308bb4070713e19"

      def install
        bin.install "shovel"
      end
    end
  end

  def caveats
    <<~EOS
      Unfortunately, Apple wants to charge developers $100/year to distribute
      their apps without a big scary "... the developer cannot be verified"
      warning. I'm not willing to pay that to give away free apps.
      See https://www.macworld.com/article/3140183/how-to-install-an-app-in-macos-sierra-thats-not-signed-by-a-developer.html to work around that
    EOS
  end
end
