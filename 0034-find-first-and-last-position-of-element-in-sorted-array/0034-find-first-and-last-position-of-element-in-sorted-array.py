class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:

        def first(nums,target):
            n = len(nums)
            low = 0
            high = n-1
            first_occ = n
            
            while low <= high:
                mid = (low+high)//2

                if nums[mid] >= target:
                    first_occ = mid
                    high = mid -1

                else:
                    low = mid+1
            return first_occ

        def last(nums , target):
            n = len(nums)
            low = 0
            high = n-1
            last_occ = n

            while low <= high:
                mid = (low+high)//2

                if nums[mid] > target:
                    last_occ = mid 
                    high = mid -1

                else:
                    low = mid+1
            return last_occ

        first_occ = first(nums , target)
        last_occ = last(nums , target)

        if first_occ == last_occ:
            return [-1,-1]

        return [first_occ , last_occ -1]

        



        

        
        