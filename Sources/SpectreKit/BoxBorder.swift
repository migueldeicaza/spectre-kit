/// Represents a border.
public class BoxBorder {
    /// Gets the string representation of the specified border part.
    /// - Parameter part: The part to get the character representation for.
    /// - Returns: A character representation of the specified border part.
    public func get(part: BoxBorderPart) -> String {
        fatalError("Implement in a subclass")
    }

    /// Gets the safe border for this border or `nil` if none exist.
    public var safeBorder: BoxBorder? {
        nil
    }

    /// Gets the safe border for a border.
    /// - Parameters:
    ///  - border: The border to get the safe border for.
    ///  - safe: Whether or not to return the safe border.
    /// - Returns: The safe border if one exist, otherwise the original border.
    public func getSafeBorder(safe: Bool) -> BoxBorder {
        if safe, let safeBorder {
            return safeBorder
        }
        return self
    }

    /// Gets an invisible border.
    public static var none: BoxBorder { NoBoxBorder() }

    /// Gets an ASCII border.
    public static var ascii: BoxBorder { AsciiBoxBorder() }

    /// Gets a double border.
    public static var double: BoxBorder { DoubleBoxBorder() }

    /// Gets a heavy border
    public static var heavy: BoxBorder { HeavyBoxBorder() }

    /// Gets a rounded border
    public static var rounded: BoxBorder { RoundedBoxBorder() }

    /// Gets a square border
    public static var square: BoxBorder { SquareBoxBorder() }
}
