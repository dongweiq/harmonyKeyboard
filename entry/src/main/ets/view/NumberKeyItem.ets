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
import { SourceListType } from '../model/MenuData';
import KeyEventListen from '../viewmodel/KeyEventListen';

@Component
export struct NumberKeyItem {
  @Consume searchContent: string;
  @Consume menuType: number;
  private keyValue: SourceListType | undefined = undefined;
  private color: ResourceStr = $r('app.color.font_background_white');
  private textColor: ResourceStr = $r('app.color.font_color')

  @Styles
  pressedStyles() {
    .backgroundColor($r('app.color.state_styles_pressed'))
  }

  @Styles
  normalStyles() {
    .backgroundColor(this.color)
  }

  build() {
    Text(this.keyValue?.content)
      .fontSize(20)
      .fontColor(this.textColor)
      .textAlign(TextAlign.Center)
      .width('99%')
      .height('99%')
      .onClick(() => {
        if (this.keyValue?.content === CommonConstants.TEXT_ENGLISH) {
          this.menuType = CommonConstants.KEYBOARD_TYPE_ENGLISH;
        } else if (this.keyValue?.content === CommonConstants.TEXT_CLEAR) {
          this.searchContent = KeyEventListen.onKeyboardMethod(CommonConstants.CLEAR_CHARACTERS);
        } else if (this.keyValue?.content === CommonConstants.TEXT_SEARCH) {
          return;
        } else {
          this.searchContent = KeyEventListen.onKeyboardMethod(CommonConstants.STRING_CHARACTERS,
            this.keyValue?.content);
        }
      })
      .stateStyles({ normal: this.normalStyles, pressed: this.pressedStyles })
  }
}