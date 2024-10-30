# Json Obj

```ruby
json_obj_controller = client.json_obj
```

## Class Name

`JsonObjController`

## Methods

* [Send Schemain Model](../../doc/controllers/json-obj.md#send-schemain-model)
* [Send Schemaas Body](../../doc/controllers/json-obj.md#send-schemaas-body)
* [Send Schemaas Form](../../doc/controllers/json-obj.md#send-schemaas-form)
* [Send Schemaas Query](../../doc/controllers/json-obj.md#send-schemaas-query)
* [Get Schema](../../doc/controllers/json-obj.md#get-schema)
* [Get Schema Array](../../doc/controllers/json-obj.md#get-schema-array)
* [Get Schema Map](../../doc/controllers/json-obj.md#get-schema-map)
* [Get Schemain Model](../../doc/controllers/json-obj.md#get-schemain-model)


# Send Schemain Model

Send Schema in Model

```ruby
def send_schemain_model(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SchemaContainer`](../../doc/models/schema-container.md) | Body, Required | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
body = SchemaContainer.new(
  'definition-123',
  'a name',
  { 'key1' => 'val1', 'key2' => 'val2' }
)

result = json_obj_controller.send_schemain_model(body)
```


# Send Schemaas Body

Send Schema as Body

```ruby
def send_schemaas_body(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `Hash` | Body, Required | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
body = { 'key1' => 'val1', 'key2' => 'val2' }

result = json_obj_controller.send_schemaas_body(body)
```


# Send Schemaas Form

Send Schema as Form

```ruby
def send_schemaas_form(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `content_type` | [`ContentType`](../../doc/models/content-type.md) | Header, Required | - |
| `id` | `Integer` | Form, Required | - |
| `model` | `Hash` | Form, Required | - |
| `model_array` | `Array<Hash>` | Form, Optional | - |
| `model_map` | `Hash[String, Hash]` | Form, Optional | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
collect = {
  'content_type' => ContentType::ENUM_APPLICATIONXWWWFORMURLENCODED,
  'id' => 112,
  'model' => { 'key1' => 'val1', 'key2' => 'val2' }
}

result = json_obj_controller.send_schemaas_form(collect)
```


# Send Schemaas Query

Send Schema as Query

```ruby
def send_schemaas_query(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Query, Required | - |
| `model` | `Hash` | Query, Required | - |
| `model_array` | `Array<Hash>` | Query, Optional | - |
| `model_map` | `Hash[String, Hash]` | Query, Optional | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
collect = {
  'id' => 112,
  'model' => { 'key1' => 'val1', 'key2' => 'val2' }
}

result = json_obj_controller.send_schemaas_query(collect)
```


# Get Schema

Get Schema

```ruby
def get_schema
```

## Response Type

`Hash`

## Example Usage

```ruby
result = json_obj_controller.get_schema
```


# Get Schema Array

Get Schema Array

```ruby
def get_schema_array
```

## Response Type

`Array<Hash>`

## Example Usage

```ruby
result = json_obj_controller.get_schema_array
```


# Get Schema Map

Get Schema Map

```ruby
def get_schema_map
```

## Response Type

`Hash[String, Hash]`

## Example Usage

```ruby
result = json_obj_controller.get_schema_map
```


# Get Schemain Model

Get Schema in Model

```ruby
def get_schemain_model
```

## Response Type

[`SchemaContainer`](../../doc/models/schema-container.md)

## Example Usage

```ruby
result = json_obj_controller.get_schemain_model
```

