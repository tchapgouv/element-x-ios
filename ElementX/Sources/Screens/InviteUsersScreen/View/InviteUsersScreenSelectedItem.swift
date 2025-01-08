//
// Copyright 2023, 2024 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only
// Please see LICENSE in the repository root for full details.
//

import SwiftUI

struct InviteUsersScreenSelectedItem: View {
    let user: UserProfileProxy
    let mediaProvider: MediaProviderProtocol?
    let dismissAction: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            avatar
            
            // Tchap: calculate displayname from userId if necessary.
            //            Text(user.displayName ?? user.userID)
            Text((user.displayName ?? MatrixIdFromString(user.userID).userDisplayName?.displayName) ?? user.userID)
                .font(.compound.bodyMD)
                .foregroundColor(.compound.textPrimary)
                .lineLimit(1)
            
            // Tchap: display an additional badge if user is external.
            if MatrixIdFromString(user.userID).isExternalTchapUser {
                BadgeLabel(title: TchapL10n.commonUserIsExternal,
                           icon: \.warning,
                           isHighlighted: true)
                    .fixedSize() // Render full texte on 1 line.
            }
        }
        .frame(maxWidth: 100.0)
    }
    
    // MARK: - Private
    
    var avatar: some View {
        LoadableAvatarImage(url: user.avatarURL,
                            name: user.displayName,
                            contentID: user.userID,
                            avatarSize: .user(on: .inviteUsers),
                            mediaProvider: mediaProvider)
            .overlay(alignment: .topTrailing) {
                Button(action: dismissAction) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .scaledFrame(size: 20)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.compound.iconOnSolidPrimary, Color.compound.iconPrimary)
                }
            }
    }
}

struct InviteUsersScreenSelectedItem_Previews: PreviewProvider, TestablePreview {
    static let people: [UserProfileProxy] = [.mockAlice, .mockVerbose]
    
    static var previews: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 28) {
                ForEach(people, id: \.userID) { user in
                    InviteUsersScreenSelectedItem(user: user, mediaProvider: MediaProviderMock(configuration: .init()), dismissAction: { })
                        .frame(width: 72)
                }
            }
        }
    }
}
