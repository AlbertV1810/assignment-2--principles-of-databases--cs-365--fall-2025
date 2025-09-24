# Fall 2025 Principles of Databases — Assignment 2

* **Read these instructions repeatedly until you understand, then begin your project. If something is not clear, ask.**

## ❖・Before You Begin・❖

1. Log in to GitHub.
2. Fork this repo(sitory). See [this video](http://code-warrior.github.io/tutorials/git/github/forking-and-cloning-at-the-github-web-site/) on how to carry out this step and step `3`.
3. Clone your fork, using either the web site or the GitHub Desktop client.
4. Checkout your personalized branch, the one with your name and GitHub handle.

---

## ❖・Introduction・❖

Create a database of passwords associated with web sites. Your database should consist of the following information:

* Website name and URL
* User’s first name, last name, username, and email address
* Password
* Comment
* Timestamp related to when the password was created or when the user registeref for the site/app

An optimal implementation requires that you establish one or more relations between tables. The database should handle the following operations:

* _Create new entries_. For example, you’ve just registered for a new account at `mysql.com`.
* _Update existing entries_. For example, the URL gets updated from `http` to `https`, or you changed your password.
* _Retrieve an entry_. For example, you want to know when you registered at `mysql.com`, or you want to retrieve the password to your `hartford.edu` account.
* _Remove an entry_. For example, you’ve made too many mistakes in an entry and would like to start over.

For the passwords themselves, use MySQL’s `AES_ENCRYPT`. **Do not enter plain text passwords into the database, and, do not use your own real-world passwords**. Once complete, populate the included `setup.sql` file with the SQL syntax required to stand up and populate your database with ten unique entries of your own choosing. Ensure at least two entries have `https` URLs.

Create MySQL commands to do the following:

1. Create a new entry into the database, which already has your ten initial entries.
2. Get the password associated with the URL of one of your ten entries.
3. Get all the password-related data, including the *decrypted* password, associated with URLs that have `https` in two of your ten entries.
4. Change a URL associated with one of the passwords in your ten entries.
5. Change the password to any entry.
6. Remove a tuple based on a URL.
7. Remove a tuple based on a password.

---

## ❖・Rules・❖

* The database name **must** be `passwords`.
* **Do not** create a user or a passwords for this database.
* `setup.sql` should contain *all* the SQL code needed to stand up your database.
* **Do not** `SOURCE commands.sql` from `setup.sql`.
* All the commands mentioned at the end of the **Introduction** section above **must** be added to the included `commands.sql` file.

---

## ❖・Grading・❖

| Item                                    | Points |
|-----------------------------------------|:------:|
| _Project implementation (works or not)_ |  `33`  |
| _SQL syntax quality_                    |  `33`  |
| _Following these instructions_          |  `34`  |

---

## ❖・Due・❖

Wednesday, 8 October 2025, at 10:00 PM. ***Note*: Per the syllabus, NO late submissions will be accepted**

---

## ❖・Submission・❖

You will need to issue a pull request back into the original repo, the one from which your fork was created for this project. See the **Issuing Pull Requests** section of [this site](http://code-warrior.github.io/tutorials/git/github/index.html) for help on how to submit your assignment.

**Note**: This assignment may **only** be submitted via GitHub. **No other form of submission will be accepted**.
