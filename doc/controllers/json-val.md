# Json Val

```ruby
json_val_controller = client.json_val
```

## Class Name

`JsonValController`

## Methods

* [Send Valuein Model](../../doc/controllers/json-val.md#send-valuein-model)
* [Send Valueas Body](../../doc/controllers/json-val.md#send-valueas-body)
* [Send Valueas Form](../../doc/controllers/json-val.md#send-valueas-form)
* [Send Valueas Query](../../doc/controllers/json-val.md#send-valueas-query)
* [Get Value](../../doc/controllers/json-val.md#get-value)
* [Get Value Array](../../doc/controllers/json-val.md#get-value-array)
* [Get Value Map](../../doc/controllers/json-val.md#get-value-map)
* [Get Valuein Model](../../doc/controllers/json-val.md#get-valuein-model)


# Send Valuein Model

Send Value in Model

```ruby
def send_valuein_model(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ValueContainer`](../../doc/models/value-container.md) | Body, Required | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
body = ValueContainer.new(
  'definition-123',
  'a name',
  JSON.parse('{"key1":"val1","key2":"val2"}')
)

result = json_val_controller.send_valuein_model(body)
```


# Send Valueas Body

Send Value as Body

```ruby
def send_valueas_body(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | `Object` | Body, Required | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
body = JSON.parse('{"key1":"val1","key2":"val2"}')

result = json_val_controller.send_valueas_body(body)
```


# Send Valueas Form

Send Value as Form

```ruby
def send_valueas_form(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `content_type` | [`ContentType`](../../doc/models/content-type.md) | Header, Required | - |
| `id` | `Integer` | Form, Required | - |
| `model` | `Object` | Form, Required | - |
| `model_array` | `Array<Object>` | Form, Optional | - |
| `model_map` | `Hash[String, Object]` | Form, Optional | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
collect = {
  'content_type' => ContentType::ENUM_APPLICATIONXWWWFORMURLENCODED,
  'id' => 112,
  'model' => JSON.parse('{"key1":"val1","key2":"val2"}')
}

result = json_val_controller.send_valueas_form(collect)
```


# Send Valueas Query

Send Value as Query

```ruby
def send_valueas_query(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Query, Required | - |
| `model` | `Object` | Query, Required | - |
| `model_array` | `Array<Object>` | Query, Optional | - |
| `model_map` | `Hash[String, Object]` | Query, Optional | - |

## Response Type

[`ServerResponse`](../../doc/models/server-response.md)

## Example Usage

```ruby
collect = {
  'id' => 112,
  'model' => JSON.parse('{"key1":"val1","key2":"val2"}')
}

result = json_val_controller.send_valueas_query(collect)
```


# Get Value

Get Value

```ruby
def get_value
```

## Response Type

`Object`

## Example Usage

```ruby
result = json_val_controller.get_value
```


# Get Value Array

Get Value Array

```ruby
def get_value_array
```

## Response Type

`Array<Object>`

## Example Usage

```ruby
result = json_val_controller.get_value_array
```


# Get Value Map

Get Value Map

```ruby
def get_value_map
```

## Response Type

`Hash[String, Object]`

## Example Usage

```ruby
result = json_val_controller.get_value_map
```


# Get Valuein Model

Get Value in Model

```ruby
def get_valuein_model
```

## Response Type

[`ValueContainer`](../../doc/models/value-container.md)

## Example Usage

```ruby
result = json_val_controller.get_valuein_model
```

