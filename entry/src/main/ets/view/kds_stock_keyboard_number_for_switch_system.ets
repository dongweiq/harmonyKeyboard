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
import { HideKey } from './HideKey';

@Component
export struct kds_stock_keyboard_number_for_switch_system {
  private readonly space: number = 1;
  private readonly first_level_weight: number = 1
  private readonly two_level_weight: number = 1
  private specialColor: ResourceStr = '#f8f9fb';
  space_color: ResourceStr = '#e0e4ef'

  build() {
    Row({ space: this.space }) {
      /** 从左数第一列 */
      Column({ space: this.space }) {
        ForEach(numberSourceListData.slice(0, 4), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? this.specialColor : $r('app.color.font_background_white')
          })
            .layoutWeight(this.two_level_weight)
        }, (item: string) => JSON.stringify(item))
      }.justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(this.first_level_weight)


      /*从左数第二列*/
      Column({ space: this.space }) {
        ForEach(numberSourceListData.slice(4, 8), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? this.specialColor : $r('app.color.font_background_white')
          })
            .layoutWeight(this.two_level_weight)
        }, (item: string) => JSON.stringify(item))
      }.justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(this.first_level_weight)

      /*从左数第三列*/
      Column({ space: this.space }) {
        ForEach(numberSourceListData.slice(8, 12), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? this.specialColor : $r('app.color.font_background_white')
          })
            .layoutWeight(this.two_level_weight)
        }, (item: string) => JSON.stringify(item))
      }.justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(this.first_level_weight)

      /*从左数第四列*/
      Column({ space: this.space }) {
        ForEach(numberSourceListData.slice(12, 16), (item: SourceListType) => {
          NumberKeyItem({
            keyValue: item,
            color: item.isSpecial ? this.specialColor : $r('app.color.font_background_white')
          })
            .layoutWeight(this.two_level_weight)
        }, (item: string) => JSON.stringify(item))
      }.justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(this.first_level_weight)

      /*最后一列*/
      Column({ space: this.space }) {
        /*清空*/
        HideKey({
          color: this.specialColor
        })
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_ONE)
        /*删除*/
        DeleteKey({
          color: this.specialColor
        })
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_ONE)
        /*确定*/
        NumberKeyItem({
          keyValue: numberSourceListData.slice(17)[0],
          color: '#ff3d00',
          textColor: $r('app.color.font_background_white')
        })
          .layoutWeight(CommonConstants.LAYOUT_WEIGHT_TWO)
      }.justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(this.first_level_weight)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height(280)
    .backgroundColor(this.space_color)
  }
}

