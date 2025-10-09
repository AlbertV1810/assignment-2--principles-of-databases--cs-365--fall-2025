-- 1. Create a new password entry for a new site
INSERT INTO passwords (website_name, url, password, comment)
VALUES (
  '[WEBSITE_NAME]',
  '[URL]',
  AES_ENCRYPT('[PLAINTEXT_PASSWORD]', 'secret_key'),
  '[COMMENT]'
);

-- 2. Retrieve decrypted password for a specific URL
SELECT CAST(AES_DECRYPT(password, 'secret_key') AS CHAR) AS decrypted_password
FROM passwords
WHERE url = '[TARGET_URL]';

-- 3. Retrieve full data including decrypted password for https URLs
SELECT
  p.website_name,
  p.url,
  CAST(AES_DECRYPT(p.password, 'secret_key') AS CHAR) AS decrypted_password,
  p.comment,
  p.created_at,
  u.first_name,
  u.last_name,
  u.username,
  u.email
FROM passwords p
JOIN users u ON p.user_id = u.user_id
WHERE p.url LIKE 'https%';

-- 4. Change a URL associated with one of the passwords
UPDATE passwords
SET url = CONCAT('https', SUBSTRING(url, 5))
WHERE website_name = '[TARGET_SITE]';

-- 5. Update password for a specific site
UPDATE passwords
SET password = AES_ENCRYPT('[NEW_PASSWORD]', 'secret_key')
WHERE website_name = '[TARGET_SITE]';

-- 6. Delete password entry by URL
DELETE FROM passwords
WHERE url = '[TARGET_URL]';

-- 7. Delete password entry by password
DELETE FROM passwords
WHERE password = AES_ENCRYPT('PLAINTEXT_PASSWORD', 'secret_key');
