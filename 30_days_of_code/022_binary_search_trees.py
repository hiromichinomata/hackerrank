class Node:
    def __init__(self,data):
        self.right=self.left=None
        self.data = data
class Solution:
    def insert(self,root,data):
        if root==None:
            return Node(data)
        else:
            if data<=root.data:
                cur=self.insert(root.left,data)
                root.left=cur
            else:
                cur=self.insert(root.right,data)
                root.right=cur
        return root

    import sys
    sys.setrecursionlimit(100000)

    def getHeight(self,root):
        #Write your code here
        if root.left is None and root.right is None:
            return 0

        if root.left is None:
            left_height = 0
        else:
            left_height = self.getHeight(root.left)

        if root.right is None:
            right_height = 0
        else:
            right_height = self.getHeight(root.right)

        return max(left_height, right_height) + 1

T=int(input())
myTree=Solution()
root=None
for i in range(T):
    data=int(input())
    root=myTree.insert(root,data)
height=myTree.getHeight(root)
print(height)
