/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License,Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import CommonConstants from '../common/constants/CommonConstants';
import KeyEventListen from '../viewmodel/KeyEventListen';

@Component
export struct HideKey {
  @Consume searchContent: string;
  private color: ResourceStr = $r('app.color.font_background_white');

  @Styles
  pressedStyles() {
    .backgroundColor($r('app.color.state_styles_pressed'))
  }

  @Styles
  normalStyles() {
    .backgroundColor(this.color)
  }

  build() {
    Stack() {
      Image($r('app.media.kds_keyboard_hide_bt'))
        .width($r('app.float.delete_image_size'))
        .aspectRatio(CommonConstants.IMAGE_ASPECT_RATIO)
    }
    .backgroundColor(this.color)
    .onClick(() => {
      this.searchContent = KeyEventListen.onKeyboardMethod(CommonConstants.DELETE_CHARACTERS, this.searchContent);
    })
    .width('99%')
    .height('99%')
    .stateStyles({
      normal: this.normalStyles,
      pressed: this.pressedStyles
    })
  }
}