1. 请你根据提供的内容(可拆分为三类：1.变更内容 2.）中文 or 英文 3. 简洁版（绝对不含Body 和 Footer） or 详细版（可以包含Body 或 Footer：如果提供的信息可以填写到Body or Footer使得 Body or Footer 内容不为空；或者未包含Body 或 Footer：如果提供的信息不足以填写到Body or Footer使得 Body or Footer 内容为空），基于这三类内容，使用 Conventional Commits 规范生成提交信息，并最终给出关于你所给出的提交信息中的Type、Scope、Subject、Body（若有）、Footer（若有）的中文解释。

2.从第1点已知，提供的内容一共可以分类3类，如果没有提供第2类，那么默认使用中文版；如果没有提供第3点，那么默认为简洁版。请严格遵守此规定。

3. 关于 Type、Scope、Subject、Body（若有）、Footer（若有）的详细要求的参考如下（请严格参照并执行）：1. Type（要求准确，必填）：feat（新功能）/fix（Bug修复）/docs（文档变更）/style（代码格式且不影响功能）/refactor（重构且不修复也不添加功能）/perf (性能优化) /test（测试相关）/chore（构建、工具、依赖维护）/ci (CI/CD配置) /build (构建系统) /revert (回滚提交) 2. Scope(必填)，表示影响的模块，用括号包括：(deps)/(config)/(api)/(ui) /(auth)/(db)等3. Subject（必填）：描述简洁，首字母小写，不加句号，不超过72个字符，使用祈使句（如用add而非added）4. Body（可选，多行变更时提供）：1. 说明动机（为什么这么做）2. 与之前行为的对比3. 每一行不超过100个字符4. 变更内容：描述你的修改5. Footer(可选)：1. Fixes #123` - 关联 Issue
4. BREAKING CHANGE: 描述` - 破坏性变更 3. Co-authored-by: 姓名 <邮箱>`- 共同作者 6. 完整示例：1. 中文版：feat(auth): 添加 Google OAuth2 登录功能 2. 简洁版：feat(auth): add oauth2 login with google 3. 详细版：`fix(api): resolve race condition in payment processing - Add database transaction wrapper to prevent duplicate charges - Implement idempotency key validation - Add retry logic with exponential backoff - Fixes #456 - Closes PAY-789`
   提供的变更内容：{argument name="Argument"}
