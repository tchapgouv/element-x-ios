//
// Copyright 2022-2024 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only OR LicenseRef-Element-Commercial
// Please see LICENSE files in the repository root for full details.
//

import Foundation

enum LogViewerScreenViewModelAction {
    case done
}

struct LogViewerScreenViewState: BindableState {
    let urls: [URL]
}

enum LogViewerScreenViewAction {
    case done
}
