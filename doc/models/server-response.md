
# Server Response

## Structure

`ServerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `passed` | `TrueClass \| FalseClass` | Required | - |
| `message` | `String` | Optional | - |
| `input` | `Hash[String, Hash]` | Optional | - |
| `nullable_number_map` | `Hash[String, Float]` | Optional | - |
| `nullable_number_array` | `Array<Float>` | Optional | - |

## Example (as JSON)

```json
{
  "passed": false,
  "Message": "Message6",
  "input": {
    "key0": {
      "key1": "val1",
      "key2": "val2"
    }
  },
  "nullableNumberMap": {
    "key0": 117.45,
    "key1": 117.46
  },
  "nullableNumberArray": [
    216.38,
    216.39,
    216.4
  ]
}
```

