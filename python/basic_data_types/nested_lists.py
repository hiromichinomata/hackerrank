from operator import itemgetter

if __name__ == '__main__':
    scores = []
    students = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append((name, score))
        scores.append(score)

    scores = list(set(scores))
    second_score = sorted(scores)[1]
    for name, score in sorted(students, key=itemgetter(1, 0)):
        if score == second_score:
            print(name)
