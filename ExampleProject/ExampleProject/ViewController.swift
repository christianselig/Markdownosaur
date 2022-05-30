//
//  ViewController.swift
//  ExampleProject
//
//  Created by Ezequiel Becerra on 29/05/2022.
//

import UIKit
import Markdown
import Markdownosaur

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.attributedText = attributedText(from: markdownText())
    }

    /// Transforms markdown text to NSAttributedString
    private func attributedText(from markdown: String) -> NSAttributedString {
        let document = Document(parsing: markdown)

        var markdownosaur = Markdownosaur()
        return markdownosaur.attributedString(from: document)
    }

    /// Gets text from "test.md"
    private func markdownText() -> String {
        let url = Bundle.main.url(forResource: "test", withExtension: "md")!
        let data = try! Data(contentsOf: url)
        return String(data: data, encoding: .utf8)!
    }

}

