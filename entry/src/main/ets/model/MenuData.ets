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

export interface SourceListType {
  content: string,
  isSpecial?: boolean
}

export interface KeySourceListType {
  title: string,
  content: string,
  upperContent: string
}

export let keySourceListData: KeySourceListType[] = [
  {
    title: '1',
    content: 'q',
    upperContent: 'Q'
  },
  {
    title: '2',
    content: 'w',
    upperContent: 'W'
  },
  {
    title: '3',
    content: 'e',
    upperContent: 'E'
  },
  {
    title: '4',
    content: 'r',
    upperContent: 'R'
  },
  {
    title: '5',
    content: 't',
    upperContent: 'T'
  },
  {
    title: '6',
    content: 'y',
    upperContent: 'Y'
  },
  {
    title: '7',
    content: 'u',
    upperContent: 'U'
  },
  {
    title: '8',
    content: 'i',
    upperContent: 'I'
  },
  {
    title: '9',
    content: 'o',
    upperContent: 'O'
  },
  {
    title: '0',
    content: 'p',
    upperContent: 'P'
  },
  {
    title: String.fromCharCode(126),
    content: 'a',
    upperContent: 'A'
  },
  {
    title: String.fromCharCode(33),
    content: 's',
    upperContent: 'S'
  },
  {
    title: '@',
    content: 'd',
    upperContent: 'D'
  },
  {
    title: String.fromCharCode(35),
    content: 'f',
    upperContent: 'F'
  },
  {
    title: '%',
    content: 'g',
    upperContent: 'G'
  },
  {
    title: String.fromCharCode(39),
    content: 'h',
    upperContent: 'H'
  },
  {
    title: '&',
    content: 'j',
    upperContent: 'J'
  },
  {
    title: '*',
    content: 'k',
    upperContent: 'K'
  },
  {
    title: '?',
    content: 'l',
    upperContent: 'L'
  },
  {
    title: String.fromCharCode(72),
    content: 'z',
    upperContent: 'Z'
  },
  {
    title: String.fromCharCode(73),
    content: 'x',
    upperContent: 'X'
  },
  {
    title: String.fromCharCode(175),
    content: 'c',
    upperContent: 'C'
  },
  {
    title: String.fromCharCode(95),
    content: 'v',
    upperContent: 'V'
  },
  {
    title: String.fromCharCode(58),
    content: 'b',
    upperContent: 'B'
  },
  {
    title: String.fromCharCode(59),
    content: 'n',
    upperContent: 'N'
  },
  {
    title: String.fromCharCode(47),
    content: 'm',
    upperContent: 'M'
  },
  {
    title: '123',
    content: '123',
    upperContent: '123'
  },
  {
    title: '空格',
    content: '空格',
    upperContent: '空格'
  },
  {
    title: '搜索',
    content: '搜索',
    upperContent: '搜索'
  }
]

export let numberSourceListData: SourceListType[] = [
  {
    content: '300',
    isSpecial: true
  },
  {
    content: '601',
    isSpecial: true
  },
  {
    content: '000',
    isSpecial: true
  },
  {
    content: '002',
    isSpecial: true
  },
  {
    content: '1'
  },
  {
    content: '4'
  },
  {
    content: '7'
  },
  {
    content: '300',
    isSpecial: true
  },
  {
    content: '2'
  },
  {
    content: '5'
  },
  {
    content: '8'
  },
  {
    content: '0'
  },
  {
    content: '3'
  },
  {
    content: '6'
  },
  {
    content: '9'
  },
  {
    content: '中/英',
    isSpecial: true
  },
  {
    content: '清空',
    isSpecial: true
  },
  {
    content: '确定',
    isSpecial: true
  }
]