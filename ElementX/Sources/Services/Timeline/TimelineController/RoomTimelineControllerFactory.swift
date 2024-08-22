//
// Copyright 2022 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

struct RoomTimelineControllerFactory: RoomTimelineControllerFactoryProtocol {
    func buildRoomTimelineController(roomProxy: JoinedRoomProxyProtocol,
                                     initialFocussedEventID: String?,
                                     timelineItemFactory: RoomTimelineItemFactoryProtocol) -> RoomTimelineControllerProtocol {
        RoomTimelineController(roomProxy: roomProxy,
                               timelineProxy: roomProxy.timeline,
                               initialFocussedEventID: initialFocussedEventID,
                               shouldHideStart: false,
                               timelineItemFactory: timelineItemFactory,
                               appSettings: ServiceLocator.shared.settings)
    }
    
    func buildRoomPinnedTimelineController(roomProxy: JoinedRoomProxyProtocol,
                                           timelineItemFactory: RoomTimelineItemFactoryProtocol) async -> RoomTimelineControllerProtocol? {
        guard let pinnedEventsTimeline = await roomProxy.pinnedEventsTimeline else {
            return nil
        }
        return RoomTimelineController(roomProxy: roomProxy,
                                      timelineProxy: pinnedEventsTimeline,
                                      initialFocussedEventID: nil,
                                      shouldHideStart: true,
                                      timelineItemFactory: timelineItemFactory,
                                      appSettings: ServiceLocator.shared.settings)
    }
}
