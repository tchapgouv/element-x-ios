//
// Copyright 2023, 2024 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only OR LicenseRef-Element-Commercial
// Please see LICENSE files in the repository root for full details.
//

import SwiftUI

struct MentionSuggestionItemView: View {
    let mediaProvider: MediaProviderProtocol?
    let item: MentionSuggestionItem
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            LoadableAvatarImage(url: item.avatarURL,
                                name: item.displayName,
                                contentID: item.id,
                                avatarSize: .user(on: .suggestions),
                                mediaProvider: mediaProvider)
            VStack(alignment: .leading, spacing: 0) {
                Text(item.displayName ?? item.id)
                    .font(.compound.bodyLG)
                    .foregroundColor(.compound.textPrimary)
                    .lineLimit(1)
                // Tchap: only display User ID in Mention list when in debug mode.
                #if DEBUG
                if item.displayName != nil {
                    Text(item.id)
                        .font(.compound.bodySM)
                        .foregroundColor(.compound.textSecondary)
                        .lineLimit(1)
                }
                #endif
            }
        }
    }
}

struct MentionSuggestionItemView_Previews: PreviewProvider, TestablePreview {
    static let mockMediaProvider = MediaProviderMock(configuration: .init())
    
    static var previews: some View {
        MentionSuggestionItemView(mediaProvider: mockMediaProvider, item: .init(id: "test", displayName: "Test", avatarURL: .mockMXCUserAvatar, range: .init()))
        MentionSuggestionItemView(mediaProvider: mockMediaProvider, item: .init(id: "test2", displayName: nil, avatarURL: nil, range: .init()))
    }
}
