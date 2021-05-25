using System.Collections.Generic;

namespace Microsoft.Quantum.Simulation.Common
{
    static class DictionaryExtensions
    {
        public static CompressedSourceFile GetValueOrDefault(this Dictionary<string, CompressedSourceFile> dict, string key)
        {
            if (!dict.TryGetValue(key, out var value))
                value = default(CompressedSourceFile);

            return value;
        }
    }
}
