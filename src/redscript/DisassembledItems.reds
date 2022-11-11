import AIOMultiplier.UI.DisassembledItemsMultiplierSettings
import AIOMultiplier.Notifications.*

@replaceMethod(CraftingSystem)
public final const func GetDisassemblyResultItems(target: wref<GameObject>, itemID: ItemID, amount: Int32, out restoredAttachments: array<ItemAttachments>, opt calledFromUI: Bool) -> array<IngredientData> {
    let finalResult: array<IngredientData>;
    let i: Int32;
    let ingredients: array<wref<RecipeElement_Record>>;
    let itemData: wref<gameItemData>;
    let itemQual: gamedataQuality;
    let j: Int32;
    let newIngrData: IngredientData;
    let outResult: array<IngredientData>;
    let itemType: gamedataItemType = TweakDBInterface.GetItemRecord(ItemID.GetTDBID(itemID)).ItemType().Type();
    let dissResult: wref<DisassemblingResult_Record> = TweakDBInterface.GetDisassemblingResultRecord(t"Crafting." + TDBID.Create(EnumValueToString("gamedataItemType", Cast<Int64>(EnumInt(itemType)))));
    if !IsDefined(dissResult) {
        dissResult = TweakDBInterface.GetDisassemblingResultRecord(t"Crafting.DisassemblingResult_Default");
    };
    dissResult.Ingredients(ingredients);
    itemData = GameInstance.GetTransactionSystem(this.GetGameInstance()).GetItemData(target, itemID);
    itemQual = RPGManager.GetItemQuality(itemData);
    
    amount = AIODisassembledItems.NewAmunt(amount);
    
    i = 0;
    while i < amount {
        ArrayClear(outResult);
        j = 0;
        while j < ArraySize(ingredients) {
            newIngrData = this.CreateIngredientData(ingredients[j]);
            this.AddIngredientToResult(newIngrData, outResult);
            j += 1;
        };
        itemQual = RPGManager.GetItemQuality(itemData);
        if itemQual >= gamedataQuality.Uncommon {
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Uncommon), 1);
            this.AddIngredientToResult(newIngrData, outResult);
        };
        if itemQual >= gamedataQuality.Rare {
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare), 1);
            this.AddIngredientToResult(newIngrData, outResult);
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Rare, true), 1);
            this.AddIngredientToResult(newIngrData, outResult);
        };
        if itemQual >= gamedataQuality.Epic {
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic), 1);
            this.AddIngredientToResult(newIngrData, outResult);
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Epic, true), 1);
            this.AddIngredientToResult(newIngrData, outResult);
        };
        if itemQual >= gamedataQuality.Legendary {
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary), 1);
            this.AddIngredientToResult(newIngrData, outResult);
            newIngrData = this.CreateIngredientData(RPGManager.GetCraftingMaterialRecord(gamedataQuality.Legendary, true), 1);
            this.AddIngredientToResult(newIngrData, outResult);
        };
        this.ProcessDisassemblingPerks(outResult, itemData, restoredAttachments, calledFromUI);
        this.MergeIngredients(outResult, finalResult);
        i += 1;
    };
    return finalResult;
}

public class AIODisassembledItems {
    private static func GetMultiplier() -> Float {
        let disassembledItemsMultiplierSettings = new DisassembledItemsMultiplierSettings();

        return disassembledItemsMultiplierSettings.multiplierDisassembled;
    }

    private static func NewAmunt(oldValue: Int32) -> Int32 {
        let newValue: Int32 = Cast<Int32>(Cast<Float>(oldValue) * AIODisassembledItems.GetMultiplier());

        return newValue;
    }

    private func ShowNotification(msg: String) -> Void {
        let aioNotificationSystem = new AIONotificationSystem();

        aioNotificationSystem.ShowNotification(msg);
    }
}
