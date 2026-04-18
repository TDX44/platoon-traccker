---
status: complete
completed: "2026-04-18T15:46:59Z"
quick_id: 260418-exh
slug: remove-secondary-frame-and-modal-scrolle
---

# Summary

Removed the secondary frame behavior from the 350-1 training view.

## Completed

- Training table now renders directly on the page without an internal scroll frame.
- Generated reports now render inline on the Training page instead of inside a modal overlay.
- Print mode targets the inline report while preserving the two-page report output.

## Verification

- `python3 -m py_compile server.py`
- `node --check /tmp/platoon-index-script.js`
