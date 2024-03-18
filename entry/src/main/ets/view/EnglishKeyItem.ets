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
import { KeySourceListType } from '../model/MenuData';

@Component
export struct EnglishKeyItem {
  private keyValue: KeySourceListType | undefined = undefined;
  private color: ResourceStr = $r('app.color.font_background_white');
  @Link upper: boolean;
  @Consume searchContent: string;
  @Consume menuType: number;

  @Styles
  pressedStyles() {
    .backgroundColor($r('app.color.state_styles_pressed'))
  }

  @Styles
  normalStyles() {
    .backgroundColor(this.color)
  }

  build() {
    Text(this.upper ? this.keyValue?.upperContent : this.keyValue?.content)
      .fontSize($r('app.float.comm_text_size'))
      .fontColor(this.keyValue?.content === CommonConstants.TEXT_SEARCH ?
        $r('app.color.font_background_white') : $r('app.color.font_color'))
      .textAlign(TextAlign.Center)
      .borderRadius($r('app.float.comm_image_radius'))
      .width(CommonConstants.PERCENTAGE_MAX)
      .height(CommonConstants.PERCENTAGE_MAX)
      .onClick(() => {
        if (this.keyValue?.content === CommonConstants.TEXT_DIGIT) {
          this.menuType = CommonConstants.KEYBOARD_TYPE_DIGIT;
        } else if (this.keyValue?.content === CommonConstants.TEXT_SPACE) {
          this.searchContent = KeyEventListen.onKeyboardMethod(CommonConstants.STRING_CHARACTERS, ' ');
        } else if (this.keyValue?.content === CommonConstants.TEXT_SEARCH) {
          return;
        } else {
          this.searchContent = KeyEventListen.onKeyboardMethod(CommonConstants.STRING_CHARACTERS, this.upper ?
            this.keyValue?.upperContent : this.keyValue?.content);
        }
      })
      .stateStyles({ normal: this.normalStyles, pressed: this.pressedStyles })
  }
}