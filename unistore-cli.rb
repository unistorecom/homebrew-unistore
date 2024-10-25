# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UnistoreCli < Formula
  desc ""
  homepage "https://github.com/unistorecom/cli"
  version "0.0.38"

  on_macos do
    url "https://cdn.dev.unistore.tech/public/cli/0.0.38/cli_0.0.38_darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "8f381862fd7ad712a95a376b7fe65a7b8f917820605afaeb942bbe6d846c44d4"

    def install
      bin.install "cli" => "unistore"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://cdn.dev.unistore.tech/public/cli/0.0.38/cli_0.0.38_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b3a7a24d0aae576d7c3bb60766cc384681d91eae2c23ebca17394a3fdced3628"

        def install
          bin.install "cli" => "unistore"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://cdn.dev.unistore.tech/public/cli/0.0.38/cli_0.0.38_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "84282882fc6fadf24fd1e2f7ba63d67646d63cb226eeda0d585134dd156f8cbb"

        def install
          bin.install "cli" => "unistore"
        end
      end
    end
  end
end
