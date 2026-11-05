class VpnPin < Formula
  desc "Selective IPv4 host routing through independent OpenVPN tunnels"
  homepage "https://github.com/m1ngshum/vpn-pin"
  url "https://github.com/m1ngshum/vpn-pin/releases/download/v0.2.0-rc.4/vpn-pin-0.2.0-rc.4.tar.gz"
  version "0.2.0-rc.4"
  sha256 "71a10397f5dbddca1d14b5d3b7169ad9fe8f5d7020043c044e16f39b5cbb8086"
  license "MIT"

  depends_on :macos
  depends_on "python@3.14"
  depends_on "openvpn"

  def install
    libexec.install "bin", "lib", "VERSION"
    (bin/"vpn-pin").write <<~EOS
      #!/bin/sh
      exec "#{Formula["python@3.14"].opt_bin}/python3.14" "#{libexec}/lib/vpn_pin.py" "$@"
    EOS
    chmod 0755, bin/"vpn-pin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vpn-pin --version")
  end
end
