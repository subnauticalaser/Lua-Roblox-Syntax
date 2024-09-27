--- `Read Only`: This member is read only. Attempting to write to this member causes an error.
--- `Not Replicated`: Roblox does not replicate this member across its server-client boundary.
--- `Read Parallel`: This property is read-only and is safe to read in unsynchronized threads. Attempting to write to it causes an error.



---@type Dictionary
local Dir = {}


---@class Enum
local EnumI = {}


--- Returns an array of all [`EnumItem`](https://create.roblox.com/docs/reference/engine/datatypes/EnumItem) options available for this enum.
function EnumI:GetEnumItems() return {} end



--- The [`EnumItem`](https://create.roblox.com/docs/reference/engine/datatypes/EnumItem) data type represents an individual item in a Roblox enum.
---@class EnumItem
local EnumItem = {}



--- The name of the EnumItem.
EnumItem.Name = ''


--- The integral value assigned to the EnumItem.
EnumItem.Value = 0


--- A reference to the parent [`Enum`](https://create.roblox.com/docs/reference/engine/datatypes/Enum) of the EnumItem.
---@class Enum
EnumItem.EnumType = {}







local Enum = {}





--- The ownership type of the open place.
Enum.CreatorType = {}




--- The place is owned by a single user.
Enum.CreatorType.User = 0


--- The place is owned by a group.
Enum.CreatorType.Group = 1





---@deprecated
--- Used to represent the type of game. This can be changed in the "Basic Settings" tab when configuring a place on the website.
Enum.Genre = {}




--- The game's genre is set to All. The game will be listed as all possible genres.
Enum.Genre.All = 0



--- The game's genre is set to Town and City.
Enum.Genre.TownAndCity = 1



--- The game's genre is set to Fantasy.
Enum.Genre.Fantasy = 2



--- The game's genre is set to SciFi (Science Fiction).
Enum.Genre.SciFi = 3



--- The game's genre is set to Ninja.
Enum.Genre.Ninja = 4


--- The game's genre is set to Scary.
Enum.Genre.Scary = 5


--- The game's genre is set to Pirate.
Enum.Genre.Pirate = 6



--- The game's genre is set to Adventure.
Enum.Genre.Adventure = 7



--- The game's genre is set to Sports.
Enum.Genre.Sports = 8



--- The game's genre is set to Funny.
Enum.Genre.Funny = 9



--- The game's genre is set to Wild West.
Enum.Genre.WildWest = 10



--- The game's genre is set to War.
Enum.Genre.War = 11



--- The game's genre is set to Skate Park.
Enum.Genre.SkatePark = 12


--- The game's genre is set to Tutorial.
Enum.Genre.Tutorial = 13





Enum.HttpRequestType = {}


Enum.HttpRequestType.Default = 0

Enum.HttpRequestType.MarketplaceService	= 2

Enum.HttpRequestType.Players = 7

Enum.HttpRequestType.Chat = 15

Enum.HttpRequestType.Avatar = 16

Enum.HttpRequestType.Analytics = 23

Enum.HttpRequestType.Localization = 25





--- The GearType Enum is used as an argument in DataModel:IsGearTypeAllowed(). Gear may have more than one type/attribute.
---@deprecated
Enum.GearType = {}


--- Gear with the 'Melee' attribute.
Enum.GearType.MeleeWeapons = 0


--- Gear with the 'Ranged' attribute.
Enum.GearType.RangedWeapons = 1


Enum.GearType.Explosives = 2


Enum.GearType.PowerUps = 3


Enum.GearType.NavigationEnhancers = 4


Enum.GearType.MusicalInstruments = 5


Enum.GearType.SocialItems = 6


Enum.GearType.BuildingTools = 7


Enum.GearType.Transport = 8





---@deprecated
--- The GearGenreSetting Enum sets what types of gear are allowed in a place.
Enum.GearGenreSetting = {}



--- All gear genres are allowed.
Enum.GearGenreSetting.AllGenres = 0



--- Only gear genres matching the allowed genres specified in a place's configuration settings.
Enum.GearGenreSetting.MatchingGenreOnly	= 1




---@class Players
local Players = {}



---@class Player
local Player = {}







---@alias Dictionary Dictionary

---@param config Dictionary
---@return nil
function Players:BanAsync(config) end




--- `Security`: PluginSecurity
---@param message string
---@return nil
function Players:Chat(message) end


--- `Security`: LocalUserSecurity
---@return Player
function Players:CreateLocalPlayer() end



---@return {[number]: Player}
function Players:GetPlayers() end


---@param userName string
---@return number
function Players:GetUserIdFromNameAsync(userName) end



--- `Security`: LocalUserSecurity
---@overload fun(player: Player, reason: string): nil
---@param player Player
---@param reason string
---@param optionalMessage string
---@return nil
function Players:ReportAbuse(player, reason, optionalMessage) end



--- `Security`: RobloxScriptSecurity
---@param player Player
---@param jsonTags string
---@return nil
function Players:ReportAbuseV3(player, jsonTags) end






---@return Player
Players.LocalPlayer = Player






---@class DataModel
local DataModel = {}





---@class Players
DataModel.Players = {}



DataModel.CoreGui = {
    Name = 'GG'
}










--- **`Read Only`: This member is read only. Attempting to write to this member causes an error.**
--- 
--- **`Not Replicated`: Roblox does not replicate this member across its server-client boundary.**
--- 
--- **`Read Parallel`: This property is read-only and is safe to read in unsynchronized threads. Attempting to write to it causes an error.**
--- 
--- Describes the ID of the user or group that owns the place.
DataModel.CreatorId = 1



--- **`Read Only`: This member is read only. Attempting to write to this member causes an error.**
--- 
--- **`Not Replicated`: Roblox does not replicate this member across its server-client boundary.**
--- 
--- **`Read Parallel`: This property is read-only and is safe to read in unsynchronized threads. Attempting to write to it causes an error.**
--- 
--- Describes the ID of the experience that the place running on the server belongs to.
DataModel.GameId = 1




--- Describes the [`Enum.CreatorType`](https://create.roblox.com/docs/reference/engine/enums/CreatorType) of the place, whether the place is owned by a user or a group.
---@class Enum
DataModel.CreatorType = Enum.CreatorType




---@deprecated
--- Not functional. Historically described the [`Enum.Genre`](https://create.roblox.com/docs/reference/engine/enums/Genre)
---@class Enum
DataModel.Genre = Enum.Genre



--- A unique identifier for the running game server instance.
DataModel.JobId = ''




--- Binds a function to be called before the server shuts down. If the bound function accepts a parameter.
---@param Function function
---@return nil
function DataModel:BindToClose(Function) end





--- `Security`: RobloxScriptSecurity
---@param name string
---@param defaultValue boolean
---@return boolean
function DataModel:DefineFastFlag(name, defaultValue) end





--- `Security`: RobloxScriptSecurity
---@param name string
---@param defaultValue any
---@return any
function DataModel:DefineFastInt(name, defaultValue) end




--- `Security`: RobloxScriptSecurity
---@param name string
---@param defaultValue string
---@return string
function DataModel:DefineFastString(name, defaultValue) end




--- `Security`: LocalUserSecurity
---@param name string
---@return boolean
function DataModel:GetEngineFeature(name) end



--- `Security`: LocalUserSecurity
---@param name string
---@return boolean
function DataModel:GetFastFlag(name) end


--- `Security`: LocalUserSecurity
---@param name string
---@return any
function DataModel:GetFastInt(name) end


--- `Security`: LocalUserSecurity
---@param name string
---@return string
function DataModel:GetFastString(name) end



--- `Security`: PluginSecurity
--- 
--- 
--- Returns a table containing basic information about the jobs performed by the task scheduler.
--- 
--- In computing, a task scheduler is a system responsible for executing key tasks at the appropriate intervals.
--- 
--- You can also find live task scheduler statistics in the Task Scheduler window in Roblox Studio.
---
--- The first entry in the table returned is a reference dictionary containing the statistics (or headings) available. It is in the following format:
function DataModel:GetJobsInfo() return {} end



--- `Security`: PluginSecurity
---@param url string
---@return {[number]: {}}
function DataModel:GetObjects(url) end




--- `Security`: RobloxScriptSecurity
---@param url string
---@param binaryFormatOnly boolean
---@return {[number]: {}}
function DataModel:GetObjectsAllOrNone(url, binaryFormatOnly) end



--- `Security`: RobloxScriptSecurity
---@param url string
---@return {[number]: {}}
function DataModel:GetObjectsAsync(url) end


--- `Security`: RobloxScriptSecurity
---@param urls {}
---@return {}
function DataModel:GetObjectsList(urls) end


--- `Security`: RobloxScriptSecurity
---@return string
function DataModel:GetPlaySessionId() end


---@deprecated
--- This method is no longer useful and will always return false. Use RunService:IsServer() to see if your code is running on the server.
function DataModel:GetRemoteBuildMode() return false end




---@alias Enum.HttpRequestType Enum.HttpRequestType

--- `Security`: RobloxScriptSecurity
---@param url string
---@param httpRequestType Enum.HttpRequestType
---@return string
function DataModel:HttpGetAsync(url, httpRequestType) end



--- `Security`: RobloxScriptSecurity
---@param url string
---@param data string
---@param contentType string
---@param httpRequestType Enum.HttpRequestType
---@return string
function DataModel:HttpPostAsync(url, data, contentType, httpRequestType) end



--- `Security`: RobloxScriptSecurity
---@param url string
---@return {[number]: {}}
function DataModel:InsertObjectsAndJoinIfLegacyAsync(url) end



--- `Security`: RobloxScriptSecurity
---@return boolean
function DataModel:IsContentLoaded() end



---@return boolean
function DataModel:IsLoaded() end



--- `Security`: RobloxScriptSecurity
function DataModel:OpenVideosFolder() end



--- `Security`: RobloxScriptSecurity
---@param category string
---@param action string
---@param label string
---@param value number
function DataModel:ReportInGoogleAnalytics(category, action, label, value) end




--- `Security`: RobloxScriptSecurity
---@param name string
---@param newValue boolean
---@return boolean
function DataModel:SetFastFlagForTesting(name, newValue) end



--- `Security`: RobloxScriptSecurity
---@param name string
---@param newValue number
---@return number
function DataModel:SetFastIntForTesting(name, newValue) end


--- `Security`: RobloxScriptSecurity
---@param name string
---@param newValue string
---@return string
function DataModel:SetFastStringForTesting(name, newValue) end



--- `Security`: RobloxScriptSecurity
---@param name string
---@param version number
---@return nil
function DataModel:SetFlagVersion(name, version) end


--- `Security`: RobloxScriptSecurity
---@param value boolean
---@param placeSizeInBytes number?
---@return nil
function DataModel:SetIsLoaded(value, placeSizeInBytes) end




--- `Security`: PluginSecurity
---@param placeId number
---@return nil
function DataModel:SetPlaceId(placeId) end



--- `Security`: PluginSecurity
---@param universeId number
---@return nil
function DataModel:SetUniverseId(universeId) end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:Shutdown() end




--- `Security`: RobloxSecurity
---@return nil
function DataModel:ActivateExperimentalFeatures() end



--- `Security`: LocalUserSecurity
---@param displayName string
---@param stat string
---@return nil
function DataModel:AddStat(displayName, stat) end



--- `Security`: LocalUserSecurity
---@param resettingSimulation boolean
---@return nil
function DataModel:ClearContent(resettingSimulation) end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:ClearMessage() end



---@param placeName string
---@param templatePlaceID number
---@return number
function DataModel:CreatePlace(placeName, templatePlaceID) end



--- `Security`: RobloxScriptSecurity
---@param localSave boolean
---@return nil
function DataModel:FinishShutdown(localSave) end


--- `Security`: PluginSecurity
---@param jobname string
---@param greaterThan number
---@return number
function DataModel:GetJobIntervalPeakFraction(jobname, greaterThan) end


--- `Security`: PluginSecurity
---@param jobname string
---@param greaterThan number
---@return number
function DataModel:GetJobTimePeakFraction(jobname, greaterThan) end



--- `Security`: PluginSecurity
---@return {}
function DataModel:GetJobsExtendedStats() end



--- `Security`: RobloxScriptSecurity
---@param url string
---@param synchronous boolean
---@param httpRequestType Enum.HttpRequestType
---@param doNotAllowDiabolicalMode boolean
---@return string
function DataModel:HttpGet(url, synchronous, httpRequestType, doNotAllowDiabolicalMode) end



--- `Security`: RobloxScriptSecurity
---@param url string
---@param data string
---@param synchronous boolean
---@param contentType string
---@param httpRequestType Enum.HttpRequestType
---@param doNotAllowDiabolicalMode boolean
---@return string
function DataModel:HttpPost(url, data, synchronous, contentType, httpRequestType, doNotAllowDiabolicalMode) end




--- `Security`: LocalUserSecurity
---@param assetID number
---@return nil
function DataModel:LoadGame(assetID) end




--- `Security`: RobloxSecurity
---@return nil
function DataModel:LoadPlugins() end


--- `Security`: LocalUserSecurity
---@param assetID number
---@return nil
function DataModel:LoadWorld(assetID) end


--- `Security`: LocalUserSecurity
---@param stat string
---@return nil
function DataModel:RemoveStat(stat) end


--- `Security`: RobloxScriptSecurity
---@param id string
---@param key1 string
---@param value1 string
---@param key2 string
---@param value2 string
---@return nil
function DataModel:ReportMeasurement(id, key1, value1, key2, value2) end



--- `Security`: RobloxScriptSecurity
---@return boolean
function DataModel:RequestShutdown() end


--- `Security`: RobloxSecurity
---@param url string
---@return nil
function DataModel:Save(url) end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:SaveStats() end



--- `Security`: RobloxScriptSecurity
---@return boolean
function DataModel:SaveToRoblox() end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:ServerSave() end



---@alias Enum.CreatorType Enum.CreatorType

---@deprecated
--- `Security`: PluginSecurity
---@param creatorID number
---@param creatorType Enum.CreatorType
---@return nil
function DataModel:SetCreatorID(creatorID, creatorType) end




--- `Security`: PluginSecurity
---@param creatorId number
---@param creatorType Enum.CreatorType
---@return nil
function DataModel:SetCreatorId(creatorId, creatorType) end




--- `Security`: PluginSecurity
---@param instanceID string
---@return nil
function DataModel:SetGameInstanceId(instanceID) end





---@alias Enum.GearGenreSetting Enum.GearGenreSetting



--- `Security`: PluginSecurity
---@param genreRestriction Enum.GearGenreSetting
---@param allowedGenres number
---@return nil
function DataModel:SetGearSettings(genreRestriction, allowedGenres) end




---@alias Enum.Genre Enum.Genre

--- `Security`: PluginSecurity
---@param genre Enum.Genre
---@return nil
function DataModel:SetGenre(genre) end



--- `Security`: LocalUserSecurity
---@param seconds number
---@return nil
function DataModel:SetJobsExtendedStatsWindow(seconds) end



--- `Security`: LocalUserSecurity
---@param message string
---@return nil
function DataModel:SetMessage(message) end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:SetMessageBrickCount() end



--- `Security`: PluginSecurity
---@param placeID number
---@param robloxPlace boolean
---@return nil
---@deprecated
function DataModel:SetPlaceID(placeID, robloxPlace) end



--- `Security`: PluginSecurity
---@param placeId number
---@return nil
function DataModel:SetPlaceVersion(placeId) end



--- `Security`: LocalUserSecurity
---@param buildModeEnabled boolean
---@return nil
function DataModel:SetRemoteBuildMode(buildModeEnabled) end



--- `Security`: LocalUserSecurity
---@param info string
---@return nil
function DataModel:SetScreenshotInfo(info) end



--- `Security`: LocalUserSecurity
---@param url string
---@return nil
function DataModel:SetServerSaveUrl(url) end



--- `Security`: LocalUserSecurity
---@param newId string
---@return nil
function DataModel:SetVIPServerId(newId) end



--- `Security`: LocalUserSecurity
---@param newId number
---@return nil
function DataModel:SetVIPServerOwnerId(newId) end



--- `Security`: LocalUserSecurity
---@param info string
---@return nil
function DataModel:SetVideoInfo(info) end



--- `Security`: LocalUserSecurity
---@return nil
function DataModel:ToggleTools() end


--- `Security`: LocalUserSecurity
---@param url string
---@return {[number]: {}}
---@deprecated
function DataModel:get(url) end



---@return string
---@deprecated
function DataModel:GetMessage() end




---@alias Enum.GearType Enum.GearType

---@param gearType Enum.GearType
---@return boolean
---@deprecated
function DataModel:IsGearTypeAllowed(gearType) end




--- `Security`: RobloxScriptSecurity
---@return boolean
function DataModel:IsUniverseMetadataLoaded() end




---@overload fun(DataModel: DataModel, serviceName: 'Players'): Players
---@overload fun(DataModel: DataModel, serviceName: 'CoreGui'): Enum
function DataModel:GetService()end





--- `Security`: RobloxScriptSecurity
---@return boolean
DataModel.IsSFFlagsLoaded = true








--- The [Data Model](https://create.roblox.com/docs/projects/data-model) (commonly known as 
--- **`game`** after the global variable used to access it) is the root of Roblox's parent-child hierarchy. 
--- Its direct children are services, such as [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace) and [`Lighting`](https://create.roblox.com/docs/reference/engine/classes/Lighting), that act as the fundamental
--- components of a Roblox game.
--- 
--- **Code Samples**
--- 
--- Demonstrates using **`game`**, the root
--- instance of [`DataModel`](https://create.roblox.com/docs/reference/engine/classes/DataModel), to get services such as [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace) and [`Lighting`](https://create.roblox.com/docs/reference/engine/classes/Lighting).
--- 
--- **`GetService()`**
--- 
---    local Workspace = game:GetService("Workspace")
---    local Lighting = game:GetService("Lighting")
--- 
---    -- Examples of modifying properties
---    Workspace.Gravity = 20
---    Lighting.ClockTime = 4
--- 
---@class DataModel
local game = {}





--- The [Data Model](https://create.roblox.com/docs/projects/data-model) (commonly known as 
--- **`game`** after the global variable used to access it) is the root of Roblox's parent-child hierarchy. 
--- Its direct children are services, such as [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace) and [`Lighting`](https://create.roblox.com/docs/reference/engine/classes/Lighting), that act as the fundamental
--- components of a Roblox game.
--- 
--- **Code Samples**
--- 
--- Demonstrates using **`game`**, the root
--- instance of [`DataModel`](https://create.roblox.com/docs/reference/engine/classes/DataModel), to get services such as [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace) and [`Lighting`](https://create.roblox.com/docs/reference/engine/classes/Lighting).
--- 
--- **`GetService()`**
--- 
---    local Workspace = game:GetService("Workspace")
---    local Lighting = game:GetService("Lighting")
--- 
---    -- Examples of modifying properties
---    Workspace.Gravity = 20
---    Lighting.ClockTime = 4
--- 
---@deprecated
---@class DataModel
local Game = {}



game:GetService('CoreGui')
