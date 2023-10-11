import mods.jei.JEI;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.text.Style;

//var tagsToRemoveAndHide = [] as MCTag<ItemDefinition>[];

var itemsToRemoveAndHide = [
    <item:minecraft:wooden_sword>, <item:minecraft:wooden_shovel>, <item:minecraft:wooden_pickaxe>, <item:minecraft:wooden_axe>, <item:minecraft:wooden_hoe>, 
    <item:minecraft:stone_sword>, <item:minecraft:stone_shovel>, <item:minecraft:stone_pickaxe>, <item:minecraft:stone_axe>, <item:minecraft:stone_hoe>, 
    <item:minecraft:golden_sword>, <item:minecraft:golden_shovel>, <item:minecraft:golden_pickaxe>, <item:minecraft:golden_axe>, <item:minecraft:golden_hoe>, 
    <item:minecraft:iron_sword>, <item:minecraft:iron_shovel>, <item:minecraft:iron_pickaxe>, <item:minecraft:iron_axe>, <item:minecraft:iron_hoe>, 
    <item:minecraft:diamond_sword>, <item:minecraft:diamond_shovel>, <item:minecraft:diamond_pickaxe>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_hoe>, 
    <item:minecraft:netherite_sword>, <item:minecraft:netherite_shovel>, <item:minecraft:netherite_pickaxe>, <item:minecraft:netherite_axe>, <item:minecraft:netherite_hoe>, 
    <item:minecraft:leather_helmet>, <item:minecraft:leather_chestplate>, <item:minecraft:leather_leggings>, <item:minecraft:leather_boots>, 
    <item:minecraft:chainmail_helmet>, <item:minecraft:chainmail_chestplate>, <item:minecraft:chainmail_leggings>, <item:minecraft:chainmail_boots>, 
    <item:minecraft:golden_helmet>, <item:minecraft:golden_chestplate>, <item:minecraft:golden_leggings>, <item:minecraft:golden_boots>, 
    <item:minecraft:iron_helmet>, <item:minecraft:iron_chestplate>, <item:minecraft:iron_leggings>, <item:minecraft:iron_boots>, 
    <item:minecraft:diamond_helmet>, <item:minecraft:diamond_chestplate>, <item:minecraft:diamond_leggings>, <item:minecraft:diamond_boots>, 
    <item:minecraft:netherite_helmet>, <item:minecraft:netherite_chestplate>, <item:minecraft:netherite_leggings>, <item:minecraft:netherite_boots>, <item:minecraft:flint_and_steel>, <item:minecraft:shears>, <item:minecraft:shield>,
    <item:tconstruct:efln_ball>, <item:tconstruct:clear_item_frame>, 
    <item:savage_and_ravage:cleaver_of_beheading>, <item:savage_and_ravage:griefer_helmet>, <item:savage_and_ravage:griefer_chestplate>, <item:savage_and_ravage:griefer_leggings>, <item:savage_and_ravage:griefer_boots>, <item:savage_and_ravage:mask_of_dishonesty>,
    <item:incubation:fried_egg>,
    <item:farmersdelight:flint_knife>, <item:farmersdelight:iron_knife>, <item:farmersdelight:golden_knife>, <item:farmersdelight:diamond_knife>, <item:farmersdelight:netherite_knife>, <item:farmersdelight:wheat_dough>, <item:farmersdelight:rope>,
    <item:supplementaries:pulley_block>, <item:supplementaries:turn_table>, <item:supplementaries:bellows>, <item:supplementaries:crank>, <item:supplementaries:wrench>] as ItemDefinition[];

var itemsToRemove = [] as ItemDefinition[];

var itemsToHide = [/*<item:minecraft:trident>*/] as ItemDefinition[];

/*for tag in tagsToRemoveAndHide {
    removeAndHideTag(tag);
}*/
for item in itemsToRemoveAndHide {
    removeAndHideItem(item);
}
for item in itemsToRemove {
    craftingTable.remove(item.defaultInstance);
}

for item in itemsToHide {
    JEI.hideIngredient(item.defaultInstance);
}

var tools = [<item:minecraft:wooden_sword>, <item:minecraft:wooden_shovel>, <item:minecraft:wooden_pickaxe>, <item:minecraft:wooden_axe>, <item:minecraft:wooden_hoe>, <item:minecraft:stone_sword>, <item:minecraft:stone_shovel>, <item:minecraft:stone_pickaxe>, <item:minecraft:stone_axe>, <item:minecraft:stone_hoe>, <item:minecraft:golden_sword>, <item:minecraft:golden_shovel>, <item:minecraft:golden_pickaxe>, <item:minecraft:golden_axe>, <item:minecraft:golden_hoe>, <item:minecraft:iron_sword>, <item:minecraft:iron_shovel>, <item:minecraft:iron_pickaxe>, <item:minecraft:iron_axe>, <item:minecraft:iron_hoe>, <item:minecraft:diamond_sword>, <item:minecraft:diamond_shovel>, <item:minecraft:diamond_pickaxe>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_hoe>, <item:minecraft:netherite_sword>, <item:minecraft:netherite_shovel>, <item:minecraft:netherite_pickaxe>, <item:minecraft:netherite_axe>, <item:minecraft:netherite_hoe>, <item:minecraft:leather_helmet>, <item:minecraft:leather_chestplate>, <item:minecraft:leather_leggings>, <item:minecraft:leather_boots>, <item:minecraft:chainmail_helmet>, <item:minecraft:chainmail_chestplate>, <item:minecraft:chainmail_leggings>, <item:minecraft:chainmail_boots>, <item:minecraft:golden_helmet>, <item:minecraft:golden_chestplate>, <item:minecraft:golden_leggings>, <item:minecraft:golden_boots>, <item:minecraft:iron_helmet>, <item:minecraft:iron_chestplate>, <item:minecraft:iron_leggings>, <item:minecraft:iron_boots>, <item:minecraft:diamond_helmet>, <item:minecraft:diamond_chestplate>, <item:minecraft:diamond_leggings>, <item:minecraft:diamond_boots>, <item:minecraft:netherite_helmet>, <item:minecraft:netherite_chestplate>, <item:minecraft:netherite_leggings>, <item:minecraft:netherite_boots>,
<item:minecraft:shield>,
<item:savage_and_ravage:cleaver_of_beheading>, <item:savage_and_ravage:griefer_helmet>, <item:savage_and_ravage:griefer_chestplate>, <item:savage_and_ravage:griefer_leggings>, <item:savage_and_ravage:griefer_boots>, <item:savage_and_ravage:mask_of_dishonesty>] as ItemDefinition[];
var useless = "It's useless like a golden tool. Maybe can be recycled" as TextComponent;

for item in tools {
    item.defaultInstance.anyDamage().addTooltip(useless.setStyle(Style.empty().withColor(<constant:minecraft:formatting:dark_red>)));
}

/*function removeAndHideTag(tag as MCTag<ItemDefinition>) as void {
    for item in tag {
        removeAndHideItem(item);
    }
}*/

function removeAndHideItem(item as ItemDefinition) as void {
    craftingTable.remove(item.defaultInstance);
    JEI.hideIngredient(item.defaultInstance);
}

JEI.addIngredient(<item:create:chromatic_compound>);
JEI.addIngredient(<item:create:refined_radiance>);
JEI.addIngredient(<item:create:shadow_steel>);