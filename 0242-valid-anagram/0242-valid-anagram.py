class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        freq_s = {}
        if len(s) != len(t):
            return False

        for ch in s:
            freq_s[ch] =freq_s.get(ch , 0)+1

        for ch in t:
            if ch not in freq_s:
                return False

            else:
                if freq_s[ch] == 0:
                    return False

                else:
                    freq_s[ch] -= 1
        return True


         