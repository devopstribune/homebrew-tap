class Dt < Formula
  desc "Official DevOps Tribune CLI (dt) — Developer-first DevOps, Cloud, SRE terminal companion"
  homepage "https://www.devopstribune.com"
  url "https://registry.npmjs.org/@devopstribune/cli/-/cli-1.0.0.tgz"
  sha256 "1e9353da9705162774686a2e2878344df36e8af2acb791ec33caefd21d731519"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "DevOps Tribune CLI", shell_output("#{bin}/dt version")
  end
end
