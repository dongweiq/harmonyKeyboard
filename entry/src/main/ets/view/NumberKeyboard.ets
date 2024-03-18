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

import { SourceListType, numberSourceListData } from '../model/MenuData';
import { DeleteKey } from './DeleteKey';
import { NumberKeyItem } from './NumberKeyItem';
import CommonConstants from '../common/constants/CommonConstants';

@Component
export struct NumberKeyboard {
  build() {
    Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
      /** 从左数第一列 */
      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(numberSourceListData.slice(0, 4), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? '#e0e4ef' : $r('app.color.font_background_white')
          })
            .layoutWeight(1)
        }, (item: string) => JSON.stringify(item))
      }


      /*从左数第二列*/
      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(numberSourceListData.slice(4, 8), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? '#e0e4ef' : $r('app.color.font_background_white')
          })
            .layoutWeight(1)
        }, (item: string) => JSON.stringify(item))
      }


      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(numberSourceListData.slice(8, 12), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? '#e0e4ef' : $r('app.color.font_background_white')
          })
            .layoutWeight(1)
        }, (item: string) => JSON.stringify(item))
      }


      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        ForEach(numberSourceListData.slice(12, 16), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? '#e0e4ef' : $r('app.color.font_background_white')
          })
            .layoutWeight(1)
        }, (item: string) => JSON.stringify(item))
      }


      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {


        /*清空*/
        NumberKeyItem({
          keyValue: numberSourceListData.slice(16)[0],
          color: '#e0e4ef'
        })
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_ONE)
        /*删除*/
        DeleteKey()
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_ONE)
          .margin({ top: $r('app.float.comm_margin_five') });
        /*确定*/
        NumberKeyItem({
          keyValue: numberSourceListData.slice(17)[0],
          color: '#ff3d00',
          textColor: $r('app.color.font_background_white')
        })
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_TWO)
      }
    }
    .padding($r('app.float.comm_margin_ten'))
    .height($r('app.float.keyboard_height'))
    .backgroundColor($r('app.color.keyboard_background_color'))
  }
}

