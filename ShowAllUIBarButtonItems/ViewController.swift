//
//  ViewController.swift
//  ShowAllUIBarButtonItems
//
//  Created by Bart van Kuik on 17/07/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let allValues: [UIBarButtonSystemItem] = [
        .done,
        .cancel,
        .edit,
        .save,
        .add,
        .flexibleSpace,
        .fixedSpace,
        .compose,
        .reply,
        .action,
        .organize,
        .bookmarks,
        .search,
        .refresh,
        .stop,
        .camera,
        .trash,
        .play,
        .pause,
        .rewind,
        .fastForward,
        .undo,
        .redo,
        .pageCurl
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        self.title = "List"

        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)

        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        stackView.axis = .vertical

        for systemItem in self.allValues {
            let toolbar = UIToolbar()
            let barButton = UIBarButtonItem(barButtonSystemItem: systemItem, target: nil, action: nil)
            toolbar.setItems([barButton], animated: false)

            stackView.addArrangedSubview(toolbar)
        }

        let constraints = [
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ]
        self.view.addConstraints(constraints)
    }


}

