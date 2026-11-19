class VpnPin < Formula
  desc "Selective IPv4 host routing through independent OpenVPN tunnels"
  homepage "https://github.com/m1ngshum/vpn-pin"
  url "https://github.com/m1ngshum/vpn-pin/releases/download/v0.2.1/vpn-pin-0.2.1.tar.gz"
  version "0.2.1"
  sha256 "4665038abaa18bf71e62ab5ff57127e0a76501421c9d0c2798e54ea6aaae86e6"
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
