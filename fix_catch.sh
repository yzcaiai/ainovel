#!/bin/bash
sed -i 's/err?.message || "JSON 解析失败"/err instanceof Error ? err.message : "JSON 解析失败"/g' src/components/novel-settings/NovelSettingsForm.tsx
