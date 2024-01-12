# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UnistoreCli < Formula
  desc ""
  homepage "https://github.com/unistorecom/cli"
  version "0.0.15"

  on_macos do
    url "https://cdn.dev.unistore.tech/public/cli/0.0.15/cli_0.0.15_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "2d5c3274e1eab50448d2a42cd7fba70890d3dd97e4020b5c6c7f17e6c421447f"

    def install
      bin.install "cli" => "unistore"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cdn.dev.unistore.tech/public/cli/0.0.15/cli_0.0.15_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b538a5207036f1624ef31f8c268d07e1302fb9e98d03bfc9353c05b7a32b0465"

      def install
        bin.install "cli" => "unistore"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.dev.unistore.tech/public/cli/0.0.15/cli_0.0.15_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "79693cf6846e3dd2872be380dfd4c76b0c2a2bd176b0cf388ce0d9c8a9524fda"

      def install
        bin.install "cli" => "unistore"
      end
    end
  end
end
