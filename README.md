# HeartAttackRisk

[Trường Đại học Công nghệ Thông tin | University of Information Technology](https://www.uit.edu.vn/)

![Trường Đại học Công nghệ Thông tin | University of Information Technology](https://i.imgur.com/WmMnSRt.png)

**Giáo viên hướng dẫn**:
ThS. Nguyễn Thị Kim Phụng
GV Lý Thuyết: Ngô Thùy Yến Nhi

## Thành viên nhóm

| STT | MSSV     | Họ và Tên                    | Github                                            | Email                    |
| --- | -------- | ---------------------------- | ------------------------------------------------- | ------------------------ |
| 1   | 22520908 | Đoàn Phương Nam              | [DPhngNam](https://github.com/DPhngNam)           | <22520908@gm.uit.edu.vn> |
| 2   | 22521406 | Huỳnh Hữu Thịnh              | [ThInhHuYnh04]                                    |  |


## ❔ **How to name a branch**

- Start the branch name with a prefix `{type}/`
- Follow `{type}/` with a description of the feature or the issue related to it.
- Example:

```bash
git checkout -b feature/add-login-button
git checkout -b bug/issue-#5
```

## ❔ **How to push**

- Role commit
  `{type}: {subject}`
  - type: build | chore | ci | docs | feat | fix | perf | refactor | revert | style | test
  - subject: 'Write a short, imperative tense description of the change'
- Automatic: check lint and format pre-commit

- Example:

```bash
git commit -m "{type}: {subject}"
```

Description
|**Types**| **Description** |
|:---| :--- |
|feat| A new feature|
|fix| A bug fix|
|docs| Documentation only changes|
|style| Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc) |
|refactor| A code change that neither fixes a bug nor adds a feature |
|perf| A code change that improves performance |
|test| Adding missing tests or correcting existing tests |
|build| Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm) |
|ci| 'Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs) |
|chore| Other changes that don't modify src or test files |
|revert| Reverts a previous commit |
