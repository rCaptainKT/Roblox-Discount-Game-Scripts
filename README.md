# Roblox-Discount-Game-Scripts

SETUP:
1. Place PurchaseScript in ServerScriptService
2. Create a RemoteEvent named "ButtonEvent" in ReplicatedStorage
3. Create a ScreenGui in StartGui
4. Create a Frame in the ScreenGui
5. Create a TextBox and TextButton in the Frame
6. Place one of the button scripts in TextButton
7. Repeat steps 4-6 until you have three frames for the three different button scripts

HOW TO USE:
1. Enter ID into text box
2. Press button to purchase

NOTES:
1. Ensure third party sales are enabled in Game Settings > Security
2. Discount does not work for the owner of the game (or the owner of the group if published under a group)
3. RegularButtonScript is used for most catalog purchases
4. BundleButtonScript is used for purchasing bundles (rthro packages)
5. GamePassButtonScript is used for purchasing game passes
