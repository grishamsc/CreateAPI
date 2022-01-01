// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation

/// Response from an OCR to text operation.  Includes the confience rating and converted text result.
public struct ImageToTextResponse: Codable {
    /// Confidence level rating of the OCR operation; ratings above 80% are strong.
    public var meanConfidenceLevel: Double?
    /// Converted text string from the image input.
    public var textResult: String?

    public init(meanConfidenceLevel: Double? = nil, textResult: String? = nil) {
        self.meanConfidenceLevel = meanConfidenceLevel
        self.textResult = textResult
    }

    private enum CodingKeys: String, CodingKey {
        case meanConfidenceLevel = "MeanConfidenceLevel"
        case textResult = "TextResult"
    }
}

/// Result of an image to words-with-location OCR operation
public struct ImageToWordsWithLocationResult: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Word elements in the image
    public var words: [OcrWordElement]?

    public init(isSuccessful: Bool? = nil, words: [OcrWordElement]? = nil) {
        self.isSuccessful = isSuccessful
        self.words = words
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case words = "Words"
    }
}

/// A single word in an OCR document
public struct OcrWordElement: Codable {
    /// Text of the word
    public var wordText: String?
    /// Line number of the word
    public var lineNumber: Int?
    /// Index of the word in the line
    public var wordNumber: Int?
    /// X location of the left edge of the word in pixels
    public var xLeft: Int?
    /// Y location of the top edge of the word in pixels
    public var yTop: Int?
    /// Width of the word in pixels
    public var width: Int?
    /// Height of the word in pixels
    public var height: Int?
    /// Confidence level of the machine learning result; possible values are 0.0 (lowest accuracy) - 1.0 (highest accuracy)
    public var confidenceLevel: Double?
    /// Index of the containing block
    public var blockNumber: Int?
    /// Index of the containing paragraph
    public var paragraphNumber: Int?
    /// Index of the containing page
    public var pageNumber: Int?

    public init(wordText: String? = nil, lineNumber: Int? = nil, wordNumber: Int? = nil, xLeft: Int? = nil, yTop: Int? = nil, width: Int? = nil, height: Int? = nil, confidenceLevel: Double? = nil, blockNumber: Int? = nil, paragraphNumber: Int? = nil, pageNumber: Int? = nil) {
        self.wordText = wordText
        self.lineNumber = lineNumber
        self.wordNumber = wordNumber
        self.xLeft = xLeft
        self.yTop = yTop
        self.width = width
        self.height = height
        self.confidenceLevel = confidenceLevel
        self.blockNumber = blockNumber
        self.paragraphNumber = paragraphNumber
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case wordText = "WordText"
        case lineNumber = "LineNumber"
        case wordNumber = "WordNumber"
        case xLeft = "XLeft"
        case yTop = "YTop"
        case width = "Width"
        case height = "Height"
        case confidenceLevel = "ConfidenceLevel"
        case blockNumber = "BlockNumber"
        case paragraphNumber = "ParagraphNumber"
        case pageNumber = "PageNumber"
    }
}

/// Result of an image to lines-with-location OCR operation
public struct ImageToLinesWithLocationResult: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Words in the image
    public var lines: [OcrLineElement]?

    public init(isSuccessful: Bool? = nil, lines: [OcrLineElement]? = nil) {
        self.isSuccessful = isSuccessful
        self.lines = lines
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case lines = "Lines"
    }
}

/// A contiguous line of text in an OCR document
public struct OcrLineElement: Codable {
    /// Text of the line
    public var lineText: String?
    /// Word objects in the line
    public var words: [OcrWordElement]?

    public init(lineText: String? = nil, words: [OcrWordElement]? = nil) {
        self.lineText = lineText
        self.words = words
    }

    private enum CodingKeys: String, CodingKey {
        case lineText = "LineText"
        case words = "Words"
    }
}

/// Result of an photo to words-with-location OCR operation
public struct PhotoToWordsWithLocationResult: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Word elements in the image
    public var textElements: [OcrPhotoTextElement]?
    /// Typically null.  To analyze OCR performance, enable diagnostic mode by adding the HTTP header "DiagnosticMode" with the value "true".  When this is true, a diagnostic image showing the details of the OCR result will be set in PNG format into DiagnosticImage.
    public var diagnosticImage: String?

    public init(isSuccessful: Bool? = nil, textElements: [OcrPhotoTextElement]? = nil, diagnosticImage: String? = nil) {
        self.isSuccessful = isSuccessful
        self.textElements = textElements
        self.diagnosticImage = diagnosticImage
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case textElements = "TextElements"
        case diagnosticImage = "DiagnosticImage"
    }
}

/// A single text in an OCR document
public struct OcrPhotoTextElement: Codable {
    /// Text of the word
    public var text: String?
    /// X location of the left edge of the word in pixels
    public var xLeft: Int?
    /// Y location of the top edge of the word in pixels
    public var yTop: Int?
    /// Width of the word in pixels
    public var width: Int?
    /// Height of the word in pixels
    public var height: Int?
    /// Points that form the bounding polygon around the text
    public var boundingPoints: [Point]?
    /// Confidence level of the machine learning result; possible values are 0.0 (lowest accuracy) - 1.0 (highest accuracy)
    public var confidenceLevel: Double?

    public init(text: String? = nil, xLeft: Int? = nil, yTop: Int? = nil, width: Int? = nil, height: Int? = nil, boundingPoints: [Point]? = nil, confidenceLevel: Double? = nil) {
        self.text = text
        self.xLeft = xLeft
        self.yTop = yTop
        self.width = width
        self.height = height
        self.boundingPoints = boundingPoints
        self.confidenceLevel = confidenceLevel
    }

    private enum CodingKeys: String, CodingKey {
        case text = "Text"
        case xLeft = "XLeft"
        case yTop = "YTop"
        case width = "Width"
        case height = "Height"
        case boundingPoints = "BoundingPoints"
        case confidenceLevel = "ConfidenceLevel"
    }
}

/// Point location in 2D in an image, where 0, 0 represents the top/left corner of the image
public struct Point: Codable {
    /// X location in 2D in the image, where 0 represents the left edge of the image
    public var x: Int?
    /// Y location in 2D in the image, where 0 represents the top edge of the image
    public var y: Int?

    public init(x: Int? = nil, y: Int? = nil) {
        self.x = x
        self.y = y
    }

    private enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
    }
}

/// Result of recognizing a receipt, to extract the key information from the receipt
public struct ReceiptRecognitionResult: Codable {
    /// True if the operation was successful, false otherwise
    public var isSuccessful: Bool?
    /// The date and time printed on the receipt (if included on the receipt)
    public var timestamp: Date?
    /// The name of the business printed on the receipt (if included on the receipt)
    public var businessName: String?
    /// The website URL of the business printed on the receipt (if included on the receipt)
    public var businessWebsite: String?
    /// The address of the business printed on the receipt (if included on the receipt)
    public var addressString: String?
    /// The phone number printed on the receipt (if included on the receipt)
    public var phoneNumber: String?
    /// The individual line items comprising the order; does not include total (see ReceiptTotal)
    public var receiptItems: [ReceiptLineItem]?
    /// Optional; if available, the monetary value of the receipt subtotal - typically not including specialized line items such as Tax. If this value is not available, it will be 0.
    public var receiptSubTotal: Double?
    /// The total monetary value of the receipt (if included on the receipt)
    public var receiptTotal: Double?

    public init(isSuccessful: Bool? = nil, timestamp: Date? = nil, businessName: String? = nil, businessWebsite: String? = nil, addressString: String? = nil, phoneNumber: String? = nil, receiptItems: [ReceiptLineItem]? = nil, receiptSubTotal: Double? = nil, receiptTotal: Double? = nil) {
        self.isSuccessful = isSuccessful
        self.timestamp = timestamp
        self.businessName = businessName
        self.businessWebsite = businessWebsite
        self.addressString = addressString
        self.phoneNumber = phoneNumber
        self.receiptItems = receiptItems
        self.receiptSubTotal = receiptSubTotal
        self.receiptTotal = receiptTotal
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case timestamp = "Timestamp"
        case businessName = "BusinessName"
        case businessWebsite = "BusinessWebsite"
        case addressString = "AddressString"
        case phoneNumber = "PhoneNumber"
        case receiptItems = "ReceiptItems"
        case receiptSubTotal = "ReceiptSubTotal"
        case receiptTotal = "ReceiptTotal"
    }
}

/// Receipt line item, comprised of a product or item and a price (if available)
public struct ReceiptLineItem: Codable {
    /// Description of the item
    public var itemDescription: String?
    /// Price of the item if available
    public var itemPrice: Double?

    public init(itemDescription: String? = nil, itemPrice: Double? = nil) {
        self.itemDescription = itemDescription
        self.itemPrice = itemPrice
    }

    private enum CodingKeys: String, CodingKey {
        case itemDescription = "ItemDescription"
        case itemPrice = "ItemPrice"
    }
}

/// Result of recognizing a business card, to extract the key information from the business card
public struct BusinessCardRecognitionResult: Codable {
    /// True if the operation was successful, false otherwise
    public var isSuccessful: Bool?
    /// The name of the person printed on the business card (if included on the business card)
    public var personName: String?
    /// The title of the person printed on the business card (if included on the business card)
    public var personTitle: String?
    /// The name of the business printed on the business card (if included on the business card)
    public var businessName: String?
    /// The address printed on the business card (if included on the business card)
    public var addressString: String?
    /// The phone number printed on the business card (if included on the business card)
    public var phoneNumber: String?
    /// The email address printed on the business card (if included on the business card)
    public var emailAddress: String?
    /// The date and time printed on the business card (if included on the business card)
    public var timestamp: Date?

    public init(isSuccessful: Bool? = nil, personName: String? = nil, personTitle: String? = nil, businessName: String? = nil, addressString: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, timestamp: Date? = nil) {
        self.isSuccessful = isSuccessful
        self.personName = personName
        self.personTitle = personTitle
        self.businessName = businessName
        self.addressString = addressString
        self.phoneNumber = phoneNumber
        self.emailAddress = emailAddress
        self.timestamp = timestamp
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case personName = "PersonName"
        case personTitle = "PersonTitle"
        case businessName = "BusinessName"
        case addressString = "AddressString"
        case phoneNumber = "PhoneNumber"
        case emailAddress = "EmailAddress"
        case timestamp = "Timestamp"
    }
}

/// The result of extracting form field values
public struct FormRecognitionResult: Codable {
    /// True if the operation was successful, false otherwise
    public var isSuccessful: Bool?
    /// Result of form field OCR data extraction
    public var fieldValueExtractionResult: [FieldResult]?
    /// Result of form table OCR data extraction
    public var tableValueExtractionResults: [TableResult]?
    /// Diagnostic images - default is null, enable diagnostics=true to populate this parameter with one image per field
    public var diagnostics: [String]?
    /// Optional; populated when using photo/recognize/form/advanced with the Setting Name of the best-matching highest-relevance form
    public var bestMatchFormSettingName: String?

    public init(isSuccessful: Bool? = nil, fieldValueExtractionResult: [FieldResult]? = nil, tableValueExtractionResults: [TableResult]? = nil, diagnostics: [String]? = nil, bestMatchFormSettingName: String? = nil) {
        self.isSuccessful = isSuccessful
        self.fieldValueExtractionResult = fieldValueExtractionResult
        self.tableValueExtractionResults = tableValueExtractionResults
        self.diagnostics = diagnostics
        self.bestMatchFormSettingName = bestMatchFormSettingName
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case fieldValueExtractionResult = "FieldValueExtractionResult"
        case tableValueExtractionResults = "TableValueExtractionResults"
        case diagnostics = "Diagnostics"
        case bestMatchFormSettingName = "BestMatchFormSettingName"
    }
}

/// A pairing target field and actual value read from form
public struct FieldResult: Codable {
    /// Definition of a form field for OCR data extraction from images
    public var targetField: FormFieldDefinition?
    /// Result field value(s) extracted
    public var fieldValues: [OcrPhotoTextElement]?

    public init(targetField: FormFieldDefinition? = nil, fieldValues: [OcrPhotoTextElement]? = nil) {
        self.targetField = targetField
        self.fieldValues = fieldValues
    }

    private enum CodingKeys: String, CodingKey {
        case targetField = "TargetField"
        case fieldValues = "FieldValues"
    }
}

/// The result of reading a table via OCR from a form
public struct TableResult: Codable {
    /// Definition of a form table for OCR data extraction from images
    public var tableDefinition: FormTableDefinition?
    /// Rows of data in the table
    public var tableRowsResult: [TableRowResult]?

    public init(tableDefinition: FormTableDefinition? = nil, tableRowsResult: [TableRowResult]? = nil) {
        self.tableDefinition = tableDefinition
        self.tableRowsResult = tableRowsResult
    }

    private enum CodingKeys: String, CodingKey {
        case tableDefinition = "TableDefinition"
        case tableRowsResult = "TableRowsResult"
    }
}

/// Definition of a form field for OCR data extraction from images
public struct FormFieldDefinition: Codable {
    /// The identifier of the field; use this to identify which field is being referenced.  Set to SkipField if you do not wish to return the value of this field in the result.
    public var fieldID: String?
    /// Optional - the left-hand anchor of the field
    public var leftAnchor: String?
    /// Optional - the top anchor of the field
    public var topAnchor: String?
    /// Optional - the bottom anchor of the field
    public var bottomAnchor: String?
    /// Optional - alterate match text for the specified anchor
    public var alternateAnchor: String?
    /// Optional - the matching mode for the anchor.  Possible values are Complete (requires the entire anchor to match) and Partial (allows only part of the anchor to match) and Horizontal (anchor must be laid out horizontally).  Default is Partial.
    public var anchorMode: String?
    /// The data type of the field; possible values are INTEGER (Integer value), STRING (Arbitrary string value, spaces are permitted), DATE (Date in a structured format), DECIMAL (Decimal number), ALPHANUMERIC (Continuous alphanumeric string with no spaces), STRINGNOWHITESPACE (A string that contains no whitespace characters), SERIALNUMBER (A serial-number style string that contains letters and numbers, and certain symbols; must contain at least one number), ALPHAONLY (Alphabet characters only, no numbers or symbols or whitespace)
    public var dataType: String?
    /// Optional - the target number of digits in the field; useful for fixed-length fields
    public var targetDigitCount: Int?
    /// Optional - the target number of digits in the field; useful for fixed-length fields
    public var minimumCharacterCount: Int?
    /// Optional - set to false to block values that contain numeric digits, set to true to allow numeric digits
    public var allowNumericDigits: Bool?
    /// Vertical alignment of target value area relative to the field anchor; Possible values are VCenter, Top, Bottom
    public var verticalAlignmentType: String?
    /// Horizontal alignment of target value area relative to the field anchor; Possible values are Left, Right
    public var horizontalAlignmentType: String?
    /// Optional - scale factor for target field width - relative to width of field title; a value of 1.0 indicates the target value area has the same width as the field value as occurring in the image; a value of 2.0 would indicate that the target value area has 2 times the width of the field value as occurring in the image.
    public var targetFieldWidthRelative: Double?
    /// Optional - scale factor for target field height - relative to height of field title
    public var targetFieldHeightRelative: Double?
    /// Optional - horizontal adjestment in relative width of the field
    public var targetFieldHorizontalAdjustment: Double?
    /// Optional - vertical adjestment in relative height of the field
    public var targetFieldVerticalAdjustment: Double?
    /// Optional - Ignore any result items that contain a partial or complete match with these text strings
    public var ignore: [String]?
    /// Optional - additional options that can be set for this field definition, separated by commas.  Possible values are AllowMultiMatch (allow the same anchor to be matched to multiple fields)
    public var options: String?

    public init(fieldID: String? = nil, leftAnchor: String? = nil, topAnchor: String? = nil, bottomAnchor: String? = nil, alternateAnchor: String? = nil, anchorMode: String? = nil, dataType: String? = nil, targetDigitCount: Int? = nil, minimumCharacterCount: Int? = nil, allowNumericDigits: Bool? = nil, verticalAlignmentType: String? = nil, horizontalAlignmentType: String? = nil, targetFieldWidthRelative: Double? = nil, targetFieldHeightRelative: Double? = nil, targetFieldHorizontalAdjustment: Double? = nil, targetFieldVerticalAdjustment: Double? = nil, ignore: [String]? = nil, options: String? = nil) {
        self.fieldID = fieldID
        self.leftAnchor = leftAnchor
        self.topAnchor = topAnchor
        self.bottomAnchor = bottomAnchor
        self.alternateAnchor = alternateAnchor
        self.anchorMode = anchorMode
        self.dataType = dataType
        self.targetDigitCount = targetDigitCount
        self.minimumCharacterCount = minimumCharacterCount
        self.allowNumericDigits = allowNumericDigits
        self.verticalAlignmentType = verticalAlignmentType
        self.horizontalAlignmentType = horizontalAlignmentType
        self.targetFieldWidthRelative = targetFieldWidthRelative
        self.targetFieldHeightRelative = targetFieldHeightRelative
        self.targetFieldHorizontalAdjustment = targetFieldHorizontalAdjustment
        self.targetFieldVerticalAdjustment = targetFieldVerticalAdjustment
        self.ignore = ignore
        self.options = options
    }

    private enum CodingKeys: String, CodingKey {
        case fieldID = "FieldID"
        case leftAnchor = "LeftAnchor"
        case topAnchor = "TopAnchor"
        case bottomAnchor = "BottomAnchor"
        case alternateAnchor = "AlternateAnchor"
        case anchorMode = "AnchorMode"
        case dataType = "DataType"
        case targetDigitCount = "TargetDigitCount"
        case minimumCharacterCount = "MinimumCharacterCount"
        case allowNumericDigits = "AllowNumericDigits"
        case verticalAlignmentType = "VerticalAlignmentType"
        case horizontalAlignmentType = "HorizontalAlignmentType"
        case targetFieldWidthRelative = "TargetFieldWidth_Relative"
        case targetFieldHeightRelative = "TargetFieldHeight_Relative"
        case targetFieldHorizontalAdjustment = "TargetFieldHorizontalAdjustment"
        case targetFieldVerticalAdjustment = "TargetFieldVerticalAdjustment"
        case ignore = "Ignore"
        case options = "Options"
    }
}

/// Definition of a form table for OCR data extraction from images
public struct FormTableDefinition: Codable {
    /// Optional; the ID of the table
    public var tableID: String?
    /// Definition of the columns in the table
    public var columnDefinitions: [FormTableColumnDefinition]?
    /// Optional - scale factor for target table height - relative to maximum height of headers of columns
    public var targetTableHeightRelative: Double?
    /// Optional - scale factor for target row height - relative to height of column header
    public var targetRowHeightRelative: Double?

    public init(tableID: String? = nil, columnDefinitions: [FormTableColumnDefinition]? = nil, targetTableHeightRelative: Double? = nil, targetRowHeightRelative: Double? = nil) {
        self.tableID = tableID
        self.columnDefinitions = columnDefinitions
        self.targetTableHeightRelative = targetTableHeightRelative
        self.targetRowHeightRelative = targetRowHeightRelative
    }

    private enum CodingKeys: String, CodingKey {
        case tableID = "TableID"
        case columnDefinitions = "ColumnDefinitions"
        case targetTableHeightRelative = "TargetTableHeight_Relative"
        case targetRowHeightRelative = "TargetRowHeight_Relative"
    }
}

/// One row of data in the resulting table
public struct TableRowResult: Codable {
    /// Table cells in this row result
    public var tableRowCellsResult: [TableCellResult]?

    public init(tableRowCellsResult: [TableCellResult]? = nil) {
        self.tableRowCellsResult = tableRowCellsResult
    }

    private enum CodingKeys: String, CodingKey {
        case tableRowCellsResult = "TableRowCellsResult"
    }
}

/// Definition of a column within a table for OCR data extraction from images
public struct FormTableColumnDefinition: Codable {
    /// The identifier of the field; use this to identify which field is being referenced
    public var columnID: String?
    /// Optional - the top anchor of the column heading
    public var topAnchor: String?
    /// Optional - the matching mode for the anchor.  Possible values are Complete (requires the entire anchor to match) and Partial (allows only part of the anchor to match).  Default is Partial.
    public var anchorMode: String?
    /// The data type of the field; possible values are INTEGER (Integer value), STRING (Arbitrary string value, spaces are permitted), DATE (Date in a structured format), DECIMAL (Decimal number), ALPHANUMERIC (Continuous alphanumeric string with no spaces), STRINGNOWHITESPACE (A string that contains no whitespace characters), SERIALNUMBER (A serial-number style string that contains letters and numbers, and certain symbols; must contain at least one number), ALPHAONLY (Alphabet characters only, no numbers or symbols or whitespace)
    public var dataType: String?
    /// Optional - the target number of digits in the field; useful for fixed-length fields
    public var minimumCharacterCount: Int?
    /// Optional - set to false to block values that contain numeric digits, set to true to allow numeric digits
    public var allowNumericDigits: Bool?

    public init(columnID: String? = nil, topAnchor: String? = nil, anchorMode: String? = nil, dataType: String? = nil, minimumCharacterCount: Int? = nil, allowNumericDigits: Bool? = nil) {
        self.columnID = columnID
        self.topAnchor = topAnchor
        self.anchorMode = anchorMode
        self.dataType = dataType
        self.minimumCharacterCount = minimumCharacterCount
        self.allowNumericDigits = allowNumericDigits
    }

    private enum CodingKeys: String, CodingKey {
        case columnID = "ColumnID"
        case topAnchor = "TopAnchor"
        case anchorMode = "AnchorMode"
        case dataType = "DataType"
        case minimumCharacterCount = "MinimumCharacterCount"
        case allowNumericDigits = "AllowNumericDigits"
    }
}

/// The recognition result of one cell in one row in a table of a form
public struct TableCellResult: Codable {
    /// The ID of the column
    public var columnID: String?
    /// Result cell value(s) extracted
    public var cellValues: [OcrPhotoTextElement]?

    public init(columnID: String? = nil, cellValues: [OcrPhotoTextElement]? = nil) {
        self.columnID = columnID
        self.cellValues = cellValues
    }

    private enum CodingKeys: String, CodingKey {
        case columnID = "ColumnID"
        case cellValues = "CellValues"
    }
}

/// Definition of a form template; use a form template definition to recognize the fields in a form with Cloudmersive OCR
public struct FormDefinitionTemplate: Codable {
    /// Field definitions in the template; a field is comprised of a key/value pair
    public var fieldDefinitions: [FormFieldDefinition]?
    /// Table definitions in the template; a table is comprised of columns and rows and exists in a 2-dimensional layout; a common example of a table would be an invoice
    public var tableDefinitions: [FormTableDefinition]?

    public init(fieldDefinitions: [FormFieldDefinition]? = nil, tableDefinitions: [FormTableDefinition]? = nil) {
        self.fieldDefinitions = fieldDefinitions
        self.tableDefinitions = tableDefinitions
    }

    private enum CodingKeys: String, CodingKey {
        case fieldDefinitions = "FieldDefinitions"
        case tableDefinitions = "TableDefinitions"
    }
}

/// Response from an OCR to text operation.  Includes the confidence rating and converted text result.
public struct PdfToTextResponse: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Page OCR results
    public var ocrPages: [OcrPageResult]?

    public init(isSuccessful: Bool? = nil, ocrPages: [OcrPageResult]? = nil) {
        self.isSuccessful = isSuccessful
        self.ocrPages = ocrPages
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case ocrPages = "OcrPages"
    }
}

public struct OcrPageResult: Codable {
    /// Page number of the page that was OCR-ed, starting with 1 for the first page in the PDF file
    public var pageNumber: Int?
    /// Confidence level rating of the OCR operation; ratings above 80% are strong.
    public var meanConfidenceLevel: Double?
    /// Converted text string from the image input.
    public var textResult: String?

    public init(pageNumber: Int? = nil, meanConfidenceLevel: Double? = nil, textResult: String? = nil) {
        self.pageNumber = pageNumber
        self.meanConfidenceLevel = meanConfidenceLevel
        self.textResult = textResult
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "PageNumber"
        case meanConfidenceLevel = "MeanConfidenceLevel"
        case textResult = "TextResult"
    }
}

/// Response from an OCR to words with location operation.  Includes the confience rating and converted text result, along with the locations of the words in the pages.
public struct PdfToWordsWithLocationResult: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// OCR page results
    public var ocrPages: [OcrPageResultWithWordsWithLocation]?

    public init(isSuccessful: Bool? = nil, ocrPages: [OcrPageResultWithWordsWithLocation]? = nil) {
        self.isSuccessful = isSuccessful
        self.ocrPages = ocrPages
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case ocrPages = "OcrPages"
    }
}

/// OCR results of a page, including words of text and their location
public struct OcrPageResultWithWordsWithLocation: Codable {
    /// Page number of the page that was OCR-ed, starting with 1 for the first page in the PDF file
    public var pageNumber: Int?
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Word elements in the image
    public var words: [OcrWordElement]?

    public init(pageNumber: Int? = nil, isSuccessful: Bool? = nil, words: [OcrWordElement]? = nil) {
        self.pageNumber = pageNumber
        self.isSuccessful = isSuccessful
        self.words = words
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "PageNumber"
        case isSuccessful = "Successful"
        case words = "Words"
    }
}

/// Response from an OCR to lines with location operation.  Includes the confience rating and converted text result, along with the locations of the lines in the pages.
public struct PdfToLinesWithLocationResult: Codable {
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// OCR results for each page
    public var ocrPages: [OcrPageResultWithLinesWithLocation]?

    public init(isSuccessful: Bool? = nil, ocrPages: [OcrPageResultWithLinesWithLocation]? = nil) {
        self.isSuccessful = isSuccessful
        self.ocrPages = ocrPages
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case ocrPages = "OcrPages"
    }
}

/// OCR results of a page, including lines of text and their location
public struct OcrPageResultWithLinesWithLocation: Codable {
    /// Page number of the page that was OCR-ed, starting with 1 for the first page in the PDF file
    public var pageNumber: Int?
    /// True if successful, false otherwise
    public var isSuccessful: Bool?
    /// Word elements in the image
    public var lines: [OcrLineElement]?

    public init(pageNumber: Int? = nil, isSuccessful: Bool? = nil, lines: [OcrLineElement]? = nil) {
        self.pageNumber = pageNumber
        self.isSuccessful = isSuccessful
        self.lines = lines
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "PageNumber"
        case isSuccessful = "Successful"
        case lines = "Lines"
    }
}

/// Result of performing a get-page-angle operation
public struct GetPageAngleResult: Codable {
    /// True if the operation was successful, false otherwise
    public var isSuccessful: Bool?
    /// Angle of the page in radians; 0 represents perfectly horizontal
    public var angle: Double?

    public init(isSuccessful: Bool? = nil, angle: Double? = nil) {
        self.isSuccessful = isSuccessful
        self.angle = angle
    }

    private enum CodingKeys: String, CodingKey {
        case isSuccessful = "Successful"
        case angle = "Angle"
    }
}

public enum AnyJSON: Equatable, Codable {
    case string(String)
    case number(Double)
    case object([String: AnyJSON])
    case array([AnyJSON])
    case bool(Bool)

    var value: Any {
        switch self {
        case .string(let string): return string
        case .number(let double): return double
        case .object(let dictionary): return dictionary
        case .array(let array): return array
        case .bool(let bool): return bool
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .array(array): try container.encode(array)
        case let .object(object): try container.encode(object)
        case let .string(string): try container.encode(string)
        case let .number(number): try container.encode(number)
        case let .bool(bool): try container.encode(bool)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let object = try? container.decode([String: AnyJSON].self) {
            self = .object(object)
        } else if let array = try? container.decode([AnyJSON].self) {
            self = .array(array)
        } else if let string = try? container.decode(String.self) {
            self = .string(string)
        } else if let bool = try? container.decode(Bool.self) {
            self = .bool(bool)
        } else if let number = try? container.decode(Double.self) {
            self = .number(number)
        } else {
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "Invalid JSON value.")
            )
        }
    }
}

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
    private let string: String
    private var int: Int?

    var stringValue: String { return string }

    init(string: String) {
        self.string = string
    }

    init?(stringValue: String) {
        self.string = stringValue
    }

    var intValue: Int? { return int }

    init?(intValue: Int) {
        self.string = String(describing: intValue)
        self.int = intValue
    }

    init(stringLiteral value: String) {
        self.string = value
    }
}