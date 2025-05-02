using System;

namespace ATT.DB.Types
{
    [Flags]
    public enum RaceTypeFlags : long
    {
        HUMAN = 0x1,
        ORC = 0x2,
        DWARF = 0x4,
        NIGHTELF = 0x8, // Guessing, there isn't a Night Elf specific item in the game
        UNDEAD = 0x10,  // Guessing, there isn't an Undead specific item in the game
        TAUREN = 0x20,
        GNOME = 0x40,
        TROLL = 0x80,
        GOBLIN = 0x100,
        BLOODELF = 0x200,
        DRAENEI = 0x400,    // Guessing, there isn't a Draenei specific item in the game
        WORGEN,
        PANDAREN_NEUTRAL,
        PANDAREN_ALLIANCE,
        PANDAREN_HORDE,
        NIGHTBORNE,
        HIGHMOUNTAIN_TAUREN,
        VOIDELF,
        LIGHTFORGED,
        ZANDALARI,
        KULTIRAN,
        DARKIRON = 0x800,
        VULPERA = 0x1000,
        MAGHAR = 0x2000,
        MECHAGNOME = 0x4000,
        DRACTHYR_ALLIANCE,
        DRACTHYR_HORDE,
        EARTHEN_HORDE,
        EARTHEN_ALLIANCE,

        // Combos
        CLASSIC = HUMAN | ORC | DWARF | NIGHTELF | UNDEAD | TAUREN | GNOME | TROLL,
        TBC = CLASSIC | BLOODELF | DRAENEI,
        CATA = TBC | GOBLIN | WORGEN,
        MOP = CATA | PANDAREN_NEUTRAL | PANDAREN_ALLIANCE | PANDAREN_HORDE,
        LEGION = MOP | NIGHTBORNE | HIGHMOUNTAIN_TAUREN | VOIDELF | LIGHTFORGED,
        BFA = LEGION | ZANDALARI | KULTIRAN | DARKIRON | MAGHAR | VULPERA | MECHAGNOME,
        DRAGONFLIGHT = BFA | DRACTHYR_ALLIANCE | DRACTHYR_HORDE,
        TWW = DRAGONFLIGHT | EARTHEN_HORDE | EARTHEN_ALLIANCE,
        ALL = TWW,
    }

    //public static implicit operator object(RaceTypeFlags t) => (long)t;
}
