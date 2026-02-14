# Windsurf Slash Commands

AI コーディングエージェント（[Windsurf](https://codeium.com/windsurf)）を **シニアエンジニアリングパートナー** に変えるスラッシュコマンド集です。  
テスト生成 → 実行 → 分析 → 品質評価 → セキュリティ監査 までを一気通貫で回し、最小限の手作業でワールドクラスのソフトウェア品質を実現します。

---

## 🚀 AI-Driven Development Lifecycle

以下のサイクルを回すことで、実装からセキュリティ監査までをシームレスに完結できます。

```
  ┌─────────────┐     ┌─────────────┐     ┌─────────────────┐
  │ 1. Generate  │────▶│  2. Verify   │────▶│   3. Debug      │
  │  /test.gen   │     │  Run Tests   │     │ /test.analytics │
  └─────────────┘     └─────────────┘     └────────┬────────┘
                                                    │
                       ┌────────────────────────────┘
                       ▼
  ┌──────────────────────┐     ┌─────────────────┐
  │    4. Refine          │────▶│   5. Shield      │
  │ /software.evaluation  │     │  /vulnerability  │
  └──────────────────────┘     └─────────────────┘
```

### 1. 🏗 Generate — `/test.gen`

実装後、テストを手書きせずに AI にコードを解析させ、堅牢な E2E テストスクリプトを自動生成します。

- **Usage**: `/test.gen [path/to/frontend_component] [optional: path/to/backend_api]`
- **Focus**: ユーザー視点のロケーター、エッジケース、Playwright ベストプラクティス

### 2. ⚡️ Verify — テスト実行

生成されたテストをターミナルで実行し、実装の機能的正しさを確認します。

```bash
npx playwright test
```

### 3. 🔍 Debug — `/test.analytics`

テストが失敗した場合、スタックトレースを読む代わりに AI にログとコードを突合させ、根本原因を特定します。

- **Usage**: `/test.analytics [path/to/target]`（ターミナル出力や `test-results.json` を提供）
- **Focus**: Root Cause Analysis (RCA)、Flakiness 検出、カバレッジギャップの特定

### 4. 💎 Refine — `/software.evaluation`

テストが通ったら、"動くコード" を "卓越したコード" へ昇華させます。世界クラスの CTO & プリンシパルアーキテクト視点で **5 つの柱** に基づきスコアリングします。

| Pillar | Focus |
| :--- | :--- |
| **Architectural Integrity** | SOLID, KISS, YAGNI, DRY, Idempotency |
| **Reliability & Resiliency** | Error handling, Timeout, Retry, Circuit Breaker |
| **Observability & Operability** | Structured logging, metrics, debuggability |
| **Security & Data Integrity** | Least Privilege, Defense-in-Depth |
| **DX & Cognitive Load** | Symmetry, Principle of Least Astonishment |

- **Usage**: `/software.evaluation [path/to/directory]`
- **Output**: `docs/evaluation.[directory_name].YYYYMMDD.md`

### 5. 🛡 Shield — `/vulnerability`

コミット前の最終ゲート。攻撃者視点のオフェンシブセキュリティ監査を実施します。

| Checkpoint | Detail |
| :--- | :--- |
| **Broken Access Control** | BOLA/IDOR prevention |
| **Injection** | SQL, NoSQL, OS Command, Template Injection |
| **Frontend Security** | DOM-based XSS, Cookie attributes, CSP/HSTS |
| **SSRF** | User-supplied URL validation |
| **Data Protection** | Hardcoded secrets, PII exposure in logs |

- **Usage**: `/vulnerability [path/to/target]`
- **Tooling**: Semgrep による自律スキャン → トリアージ → 構造化コミットメッセージ付きの修正提案

---

## 🛠 Setup

使いたい `.md` ファイルをプロジェクトの `.windsurf/workflows/` ディレクトリにコピーするだけで完了です。

```
your-project/
└── .windsurf/
    └── workflows/
        ├── test.gen.md
        ├── test.analytics.md
        ├── software.evaluation.md
        └── vulnerability.md
```

> **Note**: `/vulnerability` コマンドをフル活用するには、[Semgrep](https://semgrep.dev/) のインストールを推奨します。

---

## License

MIT
