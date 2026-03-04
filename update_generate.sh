#!/bin/bash
sed -i 's/const loadSettings = async () => {/const loadSettings = useCallback(async () => {/g' src/pages/Generate.tsx
sed -i 's/setDefaultModel(model || "deepseek");\n    }\n  };/setDefaultModel(model || "deepseek");\n    }\n  }, [user]);/g' src/pages/Generate.tsx
sed -i '1s/^/import { useCallback } from "react";\n/' src/pages/Generate.tsx
