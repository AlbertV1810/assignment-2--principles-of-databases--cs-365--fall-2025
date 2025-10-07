-- 1. Create a new password entry for a new site
INSERT INTO passwords (user_id, website_name, url, password, comment)
VALUES (
  1,
  'Zoom',
  'https://zoom.us',
  AES_ENCRYPT('zoomSecure11', 'secretKey'),
  'Video conferencing account'
);

-- 2. Retrieve encrypted password for a specific URL
SELECT password
FROM passwords
WHERE url = 'https://mysql.com';

-- 3. Retrieve full data including decrypted password for https URLs
SELECT
  p.website_name,
  p.url,
  CAST(AES_DECRYPT(p.password, 'secretKey') AS CHAR) AS decrypted_password,
  p.comment,
  p.created_at,
  u.first_name,
  u.last_name,
  u.username,
  u.email
FROM passwords p
JOIN users u ON p.user_id = u.user_id
WHERE p.url LIKE 'https%';

-- 4. Update a URL from http to https
UPDATE passwords
SET url = 'https://netflix.com'
WHERE website_name = 'Netflix';

-- 5. Update password for a specific site
UPDATE passwords
SET password = AES_ENCRYPT('newNetflixPass', 'secretKey')
WHERE website_name = 'Netflix';

-- 6. Delete password entry by URL
DELETE FROM passwords
WHERE url = 'http://twitter.com';

-- 7. Delete password entry by encrypted password value
DELETE FROM passwords
WHERE password = AES_ENCRYPT('streamPass4', 'secretKey');
