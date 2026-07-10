class Solution:
    def rotateString(self, s: str, goal: str) -> bool:
        curr_str = s+s
        if len(s) != len(goal):
            return False

        for i in range(0,len(curr_str)):
            if goal in curr_str:
                return True
            else:
                return False