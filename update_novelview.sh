#!/bin/bash
sed -i 's/const loadProviders = async () => {/const loadProviders = useCallback(async () => {/g' src/pages/NovelView.tsx
sed -i 's/setDefaultModel(model || "deepseek");\n    }\n  };/setDefaultModel(model || "deepseek");\n    }\n  }, [user]);/g' src/pages/NovelView.tsx
sed -i '1s/^/import { useCallback } from "react";\n/' src/pages/NovelView.tsx
