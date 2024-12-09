module AIOMultiplier.DisassembledItems

@addField(CraftingSystem)
private let aioDisassembledItems: ref<AIODisassembledItems>;

@replaceMethod(CraftingSystem)
public const final func GetDisassemblyResultItems(
    target: wref<GameObject>,
    itemID: ItemID,
    amount: Int32,
    restoredAttachments: script_ref<[ItemAttachments]>,
    opt calledFromUI: Bool
) -> [IngredientData] {
    let i: Int32;
    let ingredients: array<wref<RecipeElement_Record>>;
    let isSlaughtomatic: Bool;
    let itemBroken: Bool;
    let itemData: wref<gameItemData>;
    let itemPlus: Float;
    let itemQual: gamedataQuality;
    let newIngrData: IngredientData;
    let outResult: array<IngredientData>;
    let itemType: gamedataItemType = TweakDBInterface
        .GetItemRecord(ItemID.GetTDBID(itemID))
        .ItemType()
        .Type();
    let itemCategory: gamedataItemCategory = TweakDBInterface
        .GetItemRecord(ItemID.GetTDBID(itemID))
        .ItemCategory()
        .Type();
    let dissResult: wref<DisassemblingResult_Record> = TweakDBInterface
        .GetDisassemblingResultRecord(
            t"Crafting."
                + TDBID
                    .Create(
                        EnumValueToString("gamedataItemType", Cast<Int64>(EnumInt(itemType)))
                    )
        );
    if !IsDefined(dissResult) {
        dissResult = TweakDBInterface.GetDisassemblingResultRecord(t"Crafting.DisassemblingResult_Default");
    }
    dissResult.Ingredients(ingredients);
    itemData = GameInstance.GetTransactionSystem(this.GetGameInstance()).GetItemData(target, itemID);
    itemQual = RPGManager.GetItemQuality(itemData);
    itemBroken = RPGManager.IsItemBroken(itemData);
    itemPlus = RPGManager.GetItemPlus(itemData);
    isSlaughtomatic = itemData.HasTag(n"Slaughtomatic");

    if !IsDefined(this.aioDisassembledItems) {
        this.aioDisassembledItems = new AIODisassembledItems();
    }

    amount = this.aioDisassembledItems.NewAmunt(amount);

    if amount > 0 {
        i = 0;
        while i < ArraySize(ingredients) {
            newIngrData = this.CreateIngredientData(ingredients[i]);
            this.AddIngredientToResult(newIngrData, amount, outResult);
            i += 1;
        }
        itemQual = RPGManager.GetItemQuality(itemData);
        if Equals(itemCategory, gamedataItemCategory.Weapon) && !itemBroken && itemPlus == 0.0 && !isSlaughtomatic {
            if Equals(itemQual, gamedataQuality.Common) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Common),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Uncommon) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Uncommon),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Rare) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Epic) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if NotEquals(itemType, gamedataItemType.Prt_Program) && !itemBroken && itemPlus == 1.0 && !isSlaughtomatic {
            if Equals(itemQual, gamedataQuality.Common) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Common),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Uncommon) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Uncommon),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Rare) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Epic) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if NotEquals(itemType, gamedataItemType.Prt_Program) && !itemBroken && itemPlus == 2.0 && !isSlaughtomatic {
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary),
                        15
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if itemBroken || isSlaughtomatic {
            if Equals(itemQual, gamedataQuality.Common) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Common),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if NotEquals(itemCategory, gamedataItemCategory.Weapon) && NotEquals(itemType, gamedataItemType.Prt_Program) {
            if Equals(itemQual, gamedataQuality.Common) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Common),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Uncommon) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Uncommon),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Rare) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Epic) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if Equals(itemType, gamedataItemType.Prt_Program) && itemPlus == 0.0 {
            if Equals(itemQual, gamedataQuality.Common) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager
                            .GetCraftingMaterialRecord(gamedataQuality.Uncommon, true),
                        1
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Uncommon) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager
                            .GetCraftingMaterialRecord(gamedataQuality.Uncommon, true),
                        7
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Rare) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare, true),
                        6
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Epic) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic, true),
                        5
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager
                            .GetCraftingMaterialRecord(gamedataQuality.Legendary, true),
                        3
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        if Equals(itemType, gamedataItemType.Prt_Program) && itemPlus == 2.0 {
            if Equals(itemQual, gamedataQuality.Legendary) {
                newIngrData = this
                    .CreateIngredientData(
                        RPGManager
                            .GetCraftingMaterialRecord(gamedataQuality.Legendary, true),
                        20
                    );
                this.AddIngredientToResult(newIngrData, amount, outResult);
            }
        }
        this
            .ProcessDisassemblingPerks(amount, outResult, itemData, restoredAttachments, calledFromUI);
    }
    return outResult;
}
