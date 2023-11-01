//
//  APIResponse.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation

struct APIResponse: AmountViewSpec {
    var titleField: TitleField
    var freeTravelCost: AllItemsField?
    var allItemsField: AllItemsField
    var amountPriceField: AmountPriceField
    
    init() {
        // TitleField Mock Data
        titleField = TitleField(leadingTitleText: "Total Amount",
                                middleTitleText: 12345,
                                trailingTitleText: "USD",
                                isExpended: true)

        // ItemInfoField Mock Data
        let itemDetail1 = ItemInfoDetailField(
                                              leadingText: "共2張",
                                              trailingText: " $54,152")

        let itemDetail2 = ItemInfoDetailField(
                                              leadingText: "共2張，場次：19:30 -22:30",
                                              trailingText: "$ 24,152")
        
        let itemDetail3 = ItemInfoDetailField(title: "【2人成行】花蓮鯉魚潭湖泊獨木整、海崖谷看海療癒 | 一日遊 | 不含午餐",
                                              leadingText: "數量 x2",
                                              trailingText: "$ 3,800")
        
        let itemDetail4 = ItemInfoDetailField(title: "池南國家森林遊樂區門票全票(平假日均可使用)-全票",
                                              leadingText: "數量 x2",
                                              trailingText: "$ 70")


        let item1 = ItemInfoField(showRedLine: true,
                                  leadingTitleText: "包車一日遊(1-4人) - 電子票",
                                  details: [itemDetail1])

        let item2 = ItemInfoField(showRedLine: true,
                                  leadingTitleText: "家庭旅遊或公司出遊(5-8人)C路線",
                                  details: [itemDetail2])
        
        let item3 = ItemInfoField(showRedLine: true,
                                  leadingTitleText: "加購",
                                  details: [itemDetail3, itemDetail4])
        
        let amountPriceInfo = AmountPriceField(titleTrailingRedText: "金額小計：$ 1,234,567")

        allItemsField = AllItemsField(itemsInfo: [item1, item2, item3],subTotalInfo: amountPriceInfo)
        
        amountPriceField = amountPriceInfo
    }
}
