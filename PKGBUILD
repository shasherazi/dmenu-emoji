# Maintainer: shasherazi <hassanrandomz@gmail.com>

pkgname=dmenu-emoji
pkgver=1.0
pkgrel=1
pkgdesc="A dmenu script to display and copy emojis"
arch=('any')
url="https://github.com/shasherazi/dmenuEmoji"
license=('MIT')
depends=('dmenu' 'xclip')
source=("src/$pkgname.sh")
sha256sums=('a76f3825b5ab174a1081dfee036005aafb70cf19f15c4b5f73e8a4a542b0d077')

package() {
    install -Dm755 "$pkgname" "$pkgdir/usr/bin/$pkgname"
    install -Dm644 "emoji-list" "$pkgdir/usr/share/$pkgname/emoj-lList"
    chmod +x "$pkgdir/usr/bin/$pkgname"
}