
# Schema Container

## Structure

`SchemaContainer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `id` | `String` | Required | - |
| `schema` | `Hash` | Required | - |
| `schema_array` | `Array<Hash>` | Optional | - |
| `schema_map` | `Hash[String, Hash]` | Optional | - |

## Example (as JSON)

```json
{
  "name": "a name",
  "id": "definition-123",
  "schema": {
    "key1": "val1",
    "key2": "val2"
  },
  "schemaArray": [
    {
      "key1": "val1",
      "key2": "val2"
    },
    {
      "key1": "val1",
      "key2": "val2"
    },
    {
      "key1": "val1",
      "key2": "val2"
    }
  ],
  "schemaMap": {
    "key0": {
      "key1": "val1",
      "key2": "val2"
    }
  }
}
```

