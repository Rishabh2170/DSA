class Solution:
    def removeOuterParentheses(self, s: str) -> str:
        result = ''
        count = 0

        for i in s:
            if i == '(':
                count +=1
            if i == ')':
                count -=1

            if  i == "(" and count > 1:
                result+=i
            elif i == ')' and count >0:
                result+=i

        return result
            
        