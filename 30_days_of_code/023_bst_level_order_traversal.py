import sys

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

    from collections import deque

    def levelOrder(self,root):
        #Write your code here
        result = []
        next_list = [root]
        while len(next_list) > 0:
            tmp_list = []
            for i in next_list:
                result.append(i.data)
                if i.left is not None:
                    tmp_list.append(i.left)
                if i.right is not None:
                    tmp_list.append(i.right)
            next_list = tmp_list
        result = list(map(str, result))
        print(' '.join(result))

T=int(input())
myTree=Solution()
root=None
for i in range(T):
    data=int(input())
    root=myTree.insert(root,data)
myTree.levelOrder(root)
