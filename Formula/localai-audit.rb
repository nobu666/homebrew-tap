class LocalaiAudit < Formula
  desc "Audit local AI services for all-interface binding and DNS-rebinding exposure"
  homepage "https://github.com/nobu666/localai-audit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nobu666/localai-audit/releases/download/v0.2.0/localai-audit_0.2.0_darwin_arm64.tar.gz"
      sha256 "fcbd190810461352bb84c10d450eee8ea334593c6f766ac509d271ff2e54cac4"
    end
    on_intel do
      url "https://github.com/nobu666/localai-audit/releases/download/v0.2.0/localai-audit_0.2.0_darwin_amd64.tar.gz"
      sha256 "d60d6afb9702cb440140c5ea0b1ffc1844921e61e5c83ad3b7cfbf54abb6b26f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nobu666/localai-audit/releases/download/v0.2.0/localai-audit_0.2.0_linux_arm64.tar.gz"
      sha256 "d7a6b06de3327ccae5e61864a1708456efbaadce7dcdbfcbf2e4d65b441a47ca"
    end
    on_intel do
      url "https://github.com/nobu666/localai-audit/releases/download/v0.2.0/localai-audit_0.2.0_linux_amd64.tar.gz"
      sha256 "8408ec1b6a8666f902e45e048be1ff5b6aac18f9308a648befaddd7c5eac4cf9"
    end
  end

  def install
    bin.install "localai-audit"
  end

  test do
    system "#{bin}/localai-audit", "--help"
  end
end
