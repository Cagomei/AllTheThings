using System.Collections.Generic;
using System.Linq;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemBonus
    /// </summary>
    internal class ItemBonus : IDBType
    {
        public long ID { get; set; }
        public int Value_0 { get; set; }
        public int Value_1 { get; set; }
        public int ParentItemBonusListID { get; set; }
        public int Type { get; set; }

        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>();
        }
    }
}
