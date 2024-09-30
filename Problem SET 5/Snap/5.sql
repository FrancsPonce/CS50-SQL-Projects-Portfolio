SELECT f1.friend_id
FROM friends f1
JOIN users u1 ON f1.user_id = u1.id
JOIN friends f2 ON f1.friend_id = f2.friend_id
JOIN users u2 ON f2.user_id = u2.id
WHERE u1.username = 'lovelytrust487'
  AND u2.username = 'exceptionalinspiration482';
