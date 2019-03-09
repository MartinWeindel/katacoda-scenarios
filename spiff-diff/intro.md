# Inspect structural differences between two YAML documents

Unlike basic diffing tools, this command has semantic knowledge of a YAML document, and is not just text-based. For example, if two documents are the same except they have some jobs listed in different orders, spiff diff will detect this, since job order matters in a document. On the other hand, if two documents differ only in the order of their resource pools, for instance, then it will yield and empty diff since resource pool order doesn't actually matter for a deployment.
