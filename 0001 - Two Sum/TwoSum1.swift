class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashmap: [Int:Int] = [:]
        
        for i in 0...nums.count-1 {
            
            let diff = target-nums[i]
            
            if let value = hashmap[diff] {
                return [value, i]
            } else {
                hashmap[nums[i]] = i
            }
        }
        
        return []; 
    }
}
