#define MEDIC_LOADOUT \
for "_i" from 1 to 24 do {_obj addItemToBackpack "ACE_quikclot";}; \
for "_i" from 1 to 24 do { _obj addItemToBackpack "ACE_packingBandage" }; \
for "_i" from 1 to 24 do { _obj addItemToBackpack "ACE_fieldDressing" }; \
for "_i" from 1 to 24 do { _obj addItemToBackpack "ACE_elasticBandage" }; \
for "_i" from 1 to 2 do { _obj addItemToBackpack "ACE_tourniquet" }; \
for "_i" from 1 to 12 do { _obj addItemToBackpack "ACE_morphine" }; \
for "_i" from 1 to 12 do { _obj addItemToBackpack "ACE_atropine" }; \
for "_i" from 1 to 12 do { _obj addItemToBackpack "ACE_epinephrine" }; \
for "_i" from 1 to 12 do { _obj addItemToBackpack "ACE_salineIV_250" }; \
for "_i" from 1 to 12 do { _obj addItemToBackpack "ACE_bloodIV_250" }; \
_obj addItemToBackpack "ACE_personalAidKit"; \
_obj addItemToVest "ACE_EarPlugs"; \
_obj addItemToBackpack "ACE_surgicalKit";

#define COMBAT_MEDIC_LOADOUT \
for "_i" from 1 to 12 do {_obj addItemToBackpack "ACE_fieldDressing";}; \
for "_i" from 1 to 12 do {_obj addItemToBackpack "ACE_packingBandage";}; \
for "_i" from 1 to 12 do {_obj addItemToBackpack "ACE_quikclot";}; \
for "_i" from 1 to 12 do {_obj addItemToBackpack "ACE_elasticBandage";}; \
for "_i" from 1 to 8 do {_obj addItemToBackpack "ACE_morphine";}; \
for "_i" from 1 to 8 do {_obj addItemToBackpack "ACE_atropine";}; \
for "_i" from 1 to 8 do {_obj addItemToBackpack "ACE_epinephrine";}; \
for "_i" from 1 to 6 do {_obj addItemToBackpack "ACE_bloodIV_250";}; \
_obj addItemToBackpack "ACE_surgicalKit"; \
_obj addItemToVest "ACE_EarPlugs"; \
_obj addItemToBackpack "ACE_tourniquet";

#define SMALL_MEDIC_LOADOUT \
for "_i" from 1 to 2 do {_obj addItemToVest "ACE_fieldDressing";}; \
for "_i" from 1 to 3 do {_obj addItemToVest "ACE_packingBandage";}; \
for "_i" from 1 to 3 do {_obj addItemToVest "ACE_quikclot";}; \
for "_i" from 1 to 2 do {_obj addItemToVest "ACE_elasticBandage";}; \
_obj addItemToVest "ACE_EarPlugs"; \
_obj addItemToVest "ACE_morphine";

#define SOLDIER_MEDIC_LOADOUT \
for "_i" from 1 to 2 do { _obj addItemToBackpack "ACE_fieldDressing" }; \
for "_i" from 1 to 4 do { _obj addItemToBackpack "ACE_packingBandage" }; \
for "_i" from 1 to 4 do { _obj addItemToBackpack "ACE_quikclot" }; \
for "_i" from 1 to 2 do { _obj addItemToBackpack "ACE_elasticBandage" }; \
for "_i" from 1 to 2 do { _obj addItemToBackpack "ACE_morphine" }; \
_obj addItemToVest "ACE_EarPlugs";\
_obj addItemToVest "ACE_morphine";

#define VEST_MEDIC_LOADOUT \
for "_i" from 1 to 2 do { _obj addItemToVest "ACE_fieldDressing" }; \
for "_i" from 1 to 4 do { _obj addItemToVest "ACE_packingBandage" }; \
for "_i" from 1 to 4 do { _obj addItemToVest "ACE_quikclot" }; \
for "_i" from 1 to 2 do { _obj addItemToVest "ACE_elasticBandage" }; \
for "_i" from 1 to 2 do { _obj addItemToVest "ACE_morphine" }; \
_obj addItemToVest "ACE_EarPlugs";\
_obj addItemToVest "ACE_morphine";

#define SOF_MEDIC_LOADOUT \
_obj addItemToBackpack "ACE_fieldDressing"; \
for "_i" from 1 to 4 do {_obj addItemToBackpack "ACE_packingBandage";}; \
for "_i" from 1 to 2 do {_obj addItemToBackpack "ACE_quikclot";}; \
for "_i" from 1 to 3 do {_obj addItemToBackpack "ACE_elasticBandage";}; \
for "_i" from 1 to 2 do {_obj addItemToBackpack "ACE_morphine";}; \
for "_i" from 1 to 2 do {_obj addItemToBackpack "ACE_atropine";}; \
for "_i" from 1 to 2 do {_obj addItemToBackpack "ACE_epinephrine";}; \
_obj addItemToVest "ACE_EarPlugs";