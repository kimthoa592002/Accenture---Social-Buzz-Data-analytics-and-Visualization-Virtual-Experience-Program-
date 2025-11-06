USE rections
GO

SELECT * FROM ReactionTypes$

SELECT Category, SUM(Score) AS TOTAL FROM Reactions$, content$, ReactionTypes$
WHERE Reactions$.[ContentID] = content$.[ContentID]
AND Reactions$.Type = ReactionTypes$.Type
GROUP BY CATEGORY
ORDER BY TOTAL DESC
