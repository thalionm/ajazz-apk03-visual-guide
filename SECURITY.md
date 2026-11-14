# Security review / Revisão de segurança

Reviewed 2026-11-14. Scope: repository files, nested SDProfile JSON/backups, downloadable archives, launcher scripts and supplied AHK. This is a static review, not a penetration test or certification of AJAZZ/plugins.

Revisão estática em 14/11/2026: arquivos, JSON/backups dos perfis, ZIPs, iniciadores e AHK. Não é teste de invasão nem certificação do AJAZZ/plugins.

## Changes / Correções

- Removed contradictory v1.0 PDFs/ZIP from the current branch and outdated Windows screenshots. Git history remains recoverable.
- AHK launcher uses an explicit interpreter in Program Files, not the `.ahk` association or PATH; version requirement and duplicate-instance protection added.
- Windows helper commands use System32 paths; delayed expansion disabled to preserve paths with `!`.
- Unencrypted Core Play URL disabled. Deezer/Netflix specify HTTPS. Confirm a trusted HTTPS destination before enabling Core Play.
- Download rebuilt from current files; checksums cover exactly the files distributed in the main ZIP. Hashes detect corruption, not malicious replacement by an account attacker.

## Limits / Limites

- AutoHotkey v1.1 compatibility is retained; this is not a v2 migration. Third-party interpreter, AJAZZ and plugins are not bundled or audited internally.
- Hotkeys remain global by design. Use without administrator privileges. The script does not download software, open network connections, log typed text or install persistence.
- The Windows scene intentionally includes shutdown, restart and sign-out actions. Their confirmation behavior belongs to the plugin and was not verified on hardware; save work before using them.
- No compiled executable binaries or CI workflows are included in this project. Native import and device operation have not been tested here.
- Never commit credentials. Report suspected credential leaks privately through GitHub's private vulnerability reporting if enabled; do not paste secrets in public issues.

## Sources

- https://docs.github.com/en/code-security/concepts/secret-security/push-protection
- https://www.autohotkey.com/docs/v1/lib/_SingleInstance.htm
- https://www.autohotkey.com/docs/v1/lib/_Requires.htm
