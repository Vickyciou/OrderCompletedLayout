//
//  APIResponse.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation
import UIKit

struct APIResponse {
    let combinedResponse: Response
    
    init() {
        //        titleField = TitleField(leadingText: "總額：",
        //                                blackAndRedText: "TWD 1,234,567",
        //                                trailingText: "費用明細",
        //                                isExpended: true)
        //
        //        let itemDetail1 = ItemInfoDetailField(
        //                                              leadingText: "共2張",
        //                                              trailingText: " $ 54,152")
        //
        //        let itemDetail2 = ItemInfoDetailField(
        //                                              leadingText: "共2張，場次：19:30 -22:30",
        //                                              trailingText: "$ 24,152")
        //
        //        let itemDetail3 = ItemInfoDetailField(title: "【2人成行】花蓮鯉魚潭湖泊獨木整、海崖谷看海療癒 | 一日遊 | 不含午餐",
        //                                              leadingText: "數量 x2",
        //                                              trailingText: "$ 3,800")
        //
        //        let itemDetail4 = ItemInfoDetailField(title: "池南國家森林遊樂區門票全票(平假日均可使用)-全票",
        //                                              leadingText: "數量 x2",
        //                                              trailingText: "$ 70")
        //
        //
        //        let item1 = ItemInfoField(showRedLine: false,
        //                                  leadingTitleText: "包車一日遊(1-4人) - 電子票",
        //                                  details: [itemDetail1])
        //
        //        let item2 = ItemInfoField(showRedLine: true,
        //                                  leadingTitleText: "家庭旅遊或公司出遊(5-8人)C路線",
        //                                  details: [itemDetail2])
        //
        //        let item3 = ItemInfoField(showRedLine: true,
        //                                  leadingTitleText: "加購",
        //                                  details: [itemDetail3, itemDetail4])
        //
        //        let amountPriceInfo = AmountPriceField(titleTrailingRedText: "金額小計：$ 1,234,567")
        //
        //        allItemsField = AllItemsField(itemsInfo: [item1, item2, item3],subTotalInfo: amountPriceInfo)
        //
        //        amountPriceField = amountPriceInfo
        //
        //        freeTravelCost = AllItemsField(itemsInfo:
        //                                        [
        //                                            ItemInfoField(showRedLine: true,
        //                                                          leadingTitleText: "費用",
        //                                                          details: [
        //                                                            ItemInfoDetailField(title: "大人 x 2位、小孩 x 2位、嬰兒 x 2位")
        //                                                          ])
        //                                        ],
        //                                       subTotalInfo: AmountPriceField(titleTrailingRedText: "金額小計: $ 52,000",
        //                                                                      subTrailingRedText: "參考稅金：  $ 8,000"))
        //
        ////        discountField = DiscountField(
        ////            discountDetail: [
        ////                DiscountDetailField(leadingText: "雙11下殺/會員獨享優惠",
        ////                                trailingText: "- $ 1,000"
        ////                                   ),
        ////
        ////                DiscountDetailField(leadingText: "國旅券折抵",
        ////                                trailingText: "- $ 1,000"
        ////                               ),
        ////                DiscountDetailField(leadingText: "折扣碼",
        ////                                trailingText: "- $ 1,000"
        ////                                )
        ////        ])
        //        discountField = DiscountField(
        //            detail: [
        //                ItemInfoDetailField(leadingText: "雙11下殺/會員獨享優惠",
        //                                trailingText: "- $ 1,000"
        //                                   ),
        //
        //                ItemInfoDetailField(leadingText: "國旅券折抵",
        //                                trailingText: "- $ 1,000"
        //                               ),
        //                ItemInfoDetailField(leadingText: "折扣碼",
        //                                trailingText: "- $ 1,000"
        //                                )
        //        ])
        //    }
        
        
        let groupAmountInfo = AmountInfo(
            titleField: TitleField(
                leadingText: "總額：",
                blackAndRedText: "TWD 1,234,567",
                trailingText: "費用明細",
                isExpended: true
            ),
            freeTravelCost: nil,
            allItemsField: AllItemsField(
                itemsInfo: [
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "旅客1 - 李千千(大人)",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "團費",
                                trailingText: "$ 54,152"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "機場稅",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "簽證費",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "東京地鐵連續24小時成人車票",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "加購項目",
                                trailingText: "$ 1,000"
                            )
                        ]
                    ),
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "旅客2 - 胡一濤(小孩佔床)",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "團費",
                                trailingText: "$ 24,152"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "機場稅",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "簽證費",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "東京地鐵連續24小時成人車票",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "加購項目",
                                trailingText: "$ 1,000"
                            )
                        ]
                    ),
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計：$1,234,567",
                    subTrailingRedText: nil,
                    subLeadingBlackText: nil,
                    descriptionText: nil
                )
            ),
            discountField: DiscountField(
                detail: [
                    ItemInfoDetailField(leadingText: "折扣碼",
                                        trailingText: "- $ 1,000"
                                       )
                ]
            ),
            amountPriceField: AmountPriceField(
                titleTrailingRedText: "總額：$1,234,567",
                subTrailingRedText: "$ 1,000",
                subLeadingBlackText: "應付訂金：$5,000 x 2位 =",
                descriptionText: "本售價按該行程所有出發日期中最低價格的費用，您最後的價格會依出發日期、出行人數、所選飯店或艙房而有所不同。"
            )
        )
        
        let flightAmountInfo = AmountInfo(
            titleField: TitleField(
                leadingText: "總額：",
                blackAndRedText: "TWD 1,234,567",
                trailingText: "費用明細",
                isExpended: true
            ),
            freeTravelCost: nil,
            allItemsField: AllItemsField(
                itemsInfo: [
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "大人 x 2位",
                        trailingTitleText: "$ 24,000",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "大人票價/位",
                                trailingText: "$ 8,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "大人稅金/位",
                                trailingText: "$ 3,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "大人開票服務費",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "大人總價/位",
                                trailingText: "$ 12,000"
                            )
                        ]
                    ),
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "小孩 x 1位",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "小孩票價/位",
                                trailingText: "$ 8,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "小孩稅金/位",
                                trailingText: "$ 3,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "小孩開票服務費",
                                trailingText: "$ 1,000"
                            ),
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "小孩總價/位",
                                trailingText: "$ 12,000"
                            )
                        ]
                    ),
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計：$ 51,000",
                    subTrailingRedText: nil,
                    subLeadingBlackText: nil,
                    descriptionText: nil
                )
            ),
            discountField: DiscountField(
                detail: [
                    ItemInfoDetailField(leadingText: "折扣碼",
                                        trailingText: "- $ 1,000"
                                       )
                ]
            ),
            amountPriceField: AmountPriceField(
                titleTrailingRedText: "總額：$ 51,000",
                descriptionText: "總額不含嬰兒稅金，歡迎電洽"
            )
        )
        
        let hotelAmountInfo = AmountInfo(
            titleField: TitleField(
                leadingText: "總額：",
                blackAndRedText: "TWD 1,234,567",
                trailingText: "費用明細",
                isExpended: true
            ),
            freeTravelCost: nil,
            allItemsField: AllItemsField(
                itemsInfo: [
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "行政客房，2間臥室(1 King Bed or 2 Twin Beds)",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "2間房 x 2晚",
                                trailingText: "$ 1,234,567"
                            )
                        ]
                    )
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計：$1,234,567",
                    subTrailingRedText: nil,
                    subLeadingBlackText: nil,
                    descriptionText: nil
                )
            ),
            discountField: DiscountField(
                detail: [
                    ItemInfoDetailField(leadingText: "訂房優惠21日前限定早鳥享折扣",
                                        trailingText: "- $ 3,000"
                                       ),
                    ItemInfoDetailField(leadingText: "折扣碼",
                                        trailingText: "- $ 1,000"
                                       )
                ]
            ),
            amountPriceField: AmountPriceField(
                titleTrailingRedText: "總額：$1,234,567",
                subTrailingRedText: nil,
                subLeadingBlackText: nil,
                descriptionText: nil
            )
        )
        
        // Ticket Mock Data
        let ticketAmountInfo = AmountInfo(
            titleField: TitleField(
                leadingText: "總額：",
                blackAndRedText: "TWD 1,234,567",
                trailingText: "費用明細",
                isExpended: true
            ),
            freeTravelCost: nil,
            allItemsField: AllItemsField(
                itemsInfo: [
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "包車一日遊(1-4人) - 電子票",
                        details: [
                            ItemInfoDetailField(
                                title: nil,
                                leadingText: "共2張",
                                trailingText: "$54,152"
                            )
                        ]
                    ),
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "家庭旅遊或公司出遊(5-8人)C路線",
                        details: [
                            ItemInfoDetailField(
                                leadingText: "共2張，場次：19:30 -22:30",
                                trailingText: "$ 24,152"
                            )
                        ]
                    ),
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "高鐵國旅聯票-高鐵票",
                        details: [
                            ItemInfoDetailField(
                                leadingText: "成人票 共2張",
                                trailingText: "$ 3,000"
                            ),
                            ItemInfoDetailField(
                                leadingText: "孩童票 共2張",
                                trailingText: "$ 2,000"
                            )
                        ]
                    )
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計：$1,234,567",
                    subTrailingRedText: nil,
                    subLeadingBlackText: nil,
                    descriptionText: nil
                )
            ),
            discountField: DiscountField(
                detail: [
                    ItemInfoDetailField(leadingText: "雙11下殺/會員獨享優惠",
                                        trailingText: "- $ 1,000"
                                       ),
                    
                    ItemInfoDetailField(leadingText: "國旅券折抵",
                                        trailingText: "- $ 1,000"
                                       ),
                    ItemInfoDetailField(leadingText: "折扣碼",
                                        trailingText: "- $ 1,000"
                                       )
                ]
            ),
            amountPriceField: AmountPriceField(
                titleTrailingRedText: "總額：$1,234,567",
                subTrailingRedText: nil,
                subLeadingBlackText: nil,
                descriptionText: nil
            )
        )
        
        // Vacation Mock Data
        let vacationAmountInfo = AmountInfo(
            titleField: TitleField(
                leadingText: "總額：",
                blackAndRedText: "TWD 2,345,678",
                trailingText: "費用明細",
                isExpended: true
            ),
            freeTravelCost: AllItemsField(
                itemsInfo:[
                    ItemInfoField(showRedLine: true,
                                  leadingTitleText: "費用",
                                  details: [
                                    ItemInfoDetailField(title: "大人 x 2位、小孩 x 2位、嬰兒 x 2位")
                                  ])
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計: $ 52,000",
                    subTrailingRedText: "參考稅金：  $ 8,000"
                )
            ),
            allItemsField: AllItemsField(
                itemsInfo: [
                    ItemInfoField(
                        showRedLine: true,
                        leadingTitleText: "加購",
                        details: [
                            ItemInfoDetailField(
                                title: "【2人成行】花蓮鯉魚潭湖泊獨木整、海崖谷看海療癒 | 一日遊 | 不含午餐",
                                leadingText: "數量 x2",
                                trailingText: "$1,000"
                            ),
                            ItemInfoDetailField(
                                title: "池南國家森林遊樂區門票全票(平假日均可使用)-全票",
                                leadingText: "數量 x2",
                                trailingText: "$1,345"
                            )
                        ]
                    )
                ],
                subTotalInfo: AmountPriceField(
                    titleTrailingRedText: "金額小計：$ 5,678",
                    subTrailingRedText: nil,
                    subLeadingBlackText: nil,
                    descriptionText: nil
                )
            ),
            discountField: DiscountField(
                detail: [
                    ItemInfoDetailField(
                        title: nil,
                        leadingText: "早鳥優惠",
                        trailingText: "- $345"
                    )
                ]
            ),
            amountPriceField: AmountPriceField(
                titleTrailingRedText: "總額：$2,345,678",
                subTrailingRedText: nil,
                subLeadingBlackText: nil,
                descriptionText: "此價格已包含參考稅金，實際價格以開票時為主"
            )
        )
        
        combinedResponse = Response(data: [
            AmountResponse(type: .flight, amountInfo: flightAmountInfo),
            AmountResponse(type: .group, amountInfo: groupAmountInfo),
            AmountResponse(type: .hotel, amountInfo: hotelAmountInfo),
            AmountResponse(type: .tickets, amountInfo: ticketAmountInfo),
            AmountResponse(type: .vacation, amountInfo: vacationAmountInfo)
        ])
        
    }
    
    
}

