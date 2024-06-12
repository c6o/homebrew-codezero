# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Codezero < Formula
  desc "Collaborative Local Microservices Development"
  homepage "https://codezero.io/"
  version "2.4.0"

  on_macos do
    on_intel do
      url "https://releases.codezero.io/2.4.0/headless-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "057facc5e89733aedff0e4a0081ddc68e875cdf85cbf53b218962bb49caeb331"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
    on_arm do
      url "https://releases.codezero.io/2.4.0/headless-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e4c43191c8e5746ecaefebcaae4e4c2111bc54d3126c883da636947671ec068"

      def install
        if File.exist?("/usr/local/bin/codezero")
          raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
        end
        bin.install "czctl"
        bin.install "czdaemon"
        bin.install "czsupervisor"
        (bash_completion/"czctl").write `#{bin}/czctl completion bash`
        (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
        (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.4.0/headless-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "d073c77716ee6931e34af96523f1ff0ef5c2b442bc441d13468664d32791b4a5"

        def install
          if File.exist?("/usr/local/bin/codezero")
            raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
          end
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
          (bash_completion/"czctl").write `#{bin}/czctl completion bash`
          (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
          (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://releases.codezero.io/2.4.0/headless-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "4c0bfe26627cc3016712f1b03cc486ed616655c54166ac9c8c5198b85fe89b9f"

        def install
          if File.exist?("/usr/local/bin/codezero")
            raise "A version not installed by Homebrew has been detected. Please run the following command to uninstall it: curl -L https://releases.codezero.io/uninstall.sh | /bin/bash"
          end
          bin.install "czctl"
          bin.install "czdaemon"
          bin.install "czsupervisor"
          (bash_completion/"czctl").write `#{bin}/czctl completion bash`
          (fish_completion/"czctl.fish").write `#{bin}/czctl completion fish`
          (zsh_completion/"_cztl").write `#{bin}/czctl completion zsh`
        end
      end
    end
  end

  def caveats
    <<~EOS
      Successfully installed Codezero 2.4.0
      Run 'czctl help' or visit https://hub.codezero.io to get started

      Docs: https://docs.codezero.io
      Help: mailto:support@codezero.io
    EOS
  end

  test do
    system "#{bin}/czctl version"
  end
end
