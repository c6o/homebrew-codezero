# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development."
  homepage "https://codezero.io/"
  version "3.0.6"

  on_macos do
    on_intel do
      url "https://storage.googleapis.com/c6o-releases-staging/3.0.6/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2944e5db6fdf5e0b1f8e6469f9d68f9befaa5cdcd321173245ca459e5a5539f1"

      def install
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
      end
    end
    on_arm do
      url "https://storage.googleapis.com/c6o-releases-staging/3.0.6/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e06398ab08a6b68ffb227e3ef4017626cac2c3b00f85324f3c9f3e3e17e66d1"

      def install
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/c6o-releases-staging/3.0.6/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "e5dc270ca8dcb8f496e478a7e2b733711f15357afabdfa181591b8616f23b865"

        def install
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://storage.googleapis.com/c6o-releases-staging/3.0.6/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "7999e4c69667013b78847700fe433edfe76f4de90519bcd8704da462ae645919"

        def install
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thanks for installing  czctl Codezero command tool!
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
