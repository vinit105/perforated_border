/// Types of perforated borders supported by the package.
///
/// - [zigzag]: Zigzag border pattern.
/// - [wavy]: Wavy border pattern.
/// - [perforated]: Simple perforated/dotted border.
/// - [bumper]: Bumper-style border with extra styling.
enum PerforatedBorderType { zigzag, wavy, perforated, bumper }

/// Enum for defining which sides of a border to apply the perforation.
///
/// Can be a single side, symmetric sides, or all sides.
///
/// - [left], [right], [top], [bottom]: Individual sides.
/// - [horizontal]: Top and bottom sides.
/// - [vertical]: Left and right sides.
/// - [allSides]: All four sides.
enum BorderSideType { left, right, top, bottom, horizontal, vertical, allSides }
