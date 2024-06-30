#include <QSvgGenerator>

int main() {
    QSvgGenerator gen(QSvgGenerator::SvgVersion::Svg11);
    return (gen.svgVersion() == QSvgGenerator::SvgVersion::Svg11)? 0: 1;
}
