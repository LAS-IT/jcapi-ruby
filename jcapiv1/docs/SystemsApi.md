# JCAPIv1::SystemsApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**systems_delete**](SystemsApi.md#systems_delete) | **DELETE** /systems/{id} | Delete a System
[**systems_get**](SystemsApi.md#systems_get) | **GET** /systems/{id} | List an individual system
[**systems_list**](SystemsApi.md#systems_list) | **GET** /systems | List All Systems
[**systems_put**](SystemsApi.md#systems_put) | **PUT** /systems/{id} | Update a system
[**systems_systemusers_binding_list**](SystemsApi.md#systems_systemusers_binding_list) | **GET** /systems/{id}/systemusers | List system user bindings
[**systems_systemusers_binding_put**](SystemsApi.md#systems_systemusers_binding_put) | **PUT** /systems/{id}/systemusers | Update a system&#39;s or user&#39;s binding


# **systems_delete**
> System systems_delete(id, content_type, accept, opts)

Delete a System

Delete a system record by its id. This command will cause the system to uninstall the JumpCloud agent from its self which can can take about a minute. If the system is not connected to JumpCloud the system record will simply be removed.

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

id = "id_example" # String | 

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  date: "date_example", # String | Current date header for the System Context API
  authorization: "authorization_example" # String | Authorization header for the System Context API
}

begin
  #Delete a System
  result = api_instance.systems_delete(id, content_type, accept, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **date** | **String**| Current date header for the System Context API | [optional] 
 **authorization** | **String**| Authorization header for the System Context API | [optional] 

### Return type

[**System**](System.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8



# **systems_get**
> System systems_get(id, content_type, accept, opts)

List an individual system

Returns an individual system.

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

id = "id_example" # String | 

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  fields: "", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  limit: 10, # Integer | The number of records to return at once.
  skip: 0, # Integer | The offset into the records to return.
  sort: "" # String | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  date: "date_example", # String | Current date header for the System Context API
  authorization: "authorization_example" # String | Authorization header for the System Context API
}

begin
  #List an individual system
  result = api_instance.systems_get(id, content_type, accept, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  | [optional] [default to ]
 **limit** | **Integer**| The number of records to return at once. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | **String**| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] [default to ]
 **date** | **String**| Current date header for the System Context API | [optional] 
 **authorization** | **String**| Authorization header for the System Context API | [optional] 

### Return type

[**System**](System.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8



# **systems_list**
> Systemslist systems_list(content_type, accept, opts)

List All Systems

Returns all Systems.

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  fields: "", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  limit: 10, # Integer | The number of records to return at once.
  skip: 0, # Integer | The offset into the records to return.
  sort: "" # String | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
}

begin
  #List All Systems
  result = api_instance.systems_list(content_type, accept, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  | [optional] [default to ]
 **limit** | **Integer**| The number of records to return at once. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | **String**| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] [default to ]

### Return type

[**Systemslist**](Systemslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8



# **systems_put**
> systems_put(id, content_type, accept, opts)

Update a system

Update a system record by its id and return the modified system record in single record format.

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

id = "id_example" # String | 

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  body: JCAPIv1::Systemput.new, # Systemput | 
  date: "date_example", # String | Current date header for the System Context API
  authorization: "authorization_example" # String | Authorization header for the System Context API
}

begin
  #Update a system
  api_instance.systems_put(id, content_type, accept, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **body** | [**Systemput**](Systemput.md)|  | [optional] 
 **date** | **String**| Current date header for the System Context API | [optional] 
 **authorization** | **String**| Authorization header for the System Context API | [optional] 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8



# **systems_systemusers_binding_list**
> Systemuserbinding systems_systemusers_binding_list(id, content_type, accept, opts)

List system user bindings

List system user bindings for a specific system in a system and user binding format.  ### Example  #### List system user bindings for specific system  ``` curl \\   -H 'Content-Type: application/json' \\   -H \"x-api-key: [YOUR_API_KEY_HERE]\" \\   \"https://console.jumpcloud.com/api/systems/[SYSTEM_ID_HERE]/systemusers\" ```

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

id = "id_example" # String | 

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  fields: "", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  limit: 10, # Integer | The number of records to return at once.
  skip: 0, # Integer | The offset into the records to return.
  sort: "" # String | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
}

begin
  #List system user bindings
  result = api_instance.systems_systemusers_binding_list(id, content_type, accept, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_systemusers_binding_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  | [optional] [default to ]
 **limit** | **Integer**| The number of records to return at once. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | **String**| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] [default to ]

### Return type

[**Systemuserbinding**](Systemuserbinding.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8



# **systems_systemusers_binding_put**
> systems_systemusers_binding_put(id, content_type, accept, opts)

Update a system's or user's binding

Adds or removes a user binding for a system.  This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  ### Example  #### Add (or remove) a system user to (from) a system  ``` curl \\   -d '{ \"add\": [\"[SYSTEM_USER_ID_TO_ADD_HERE]\"], \"remove\": [\"[SYSTEM_USER_ID_TO_REMOVE_HERE]\"] }' \\   -X PUT \\   -H 'Content-Type: application/json' \\   -H 'Accept: application/json' \\   -H \"x-api-key: [YOUR_API_KEY_HERE]\" \\   \"https://console.jumpcloud.com/api/systems/[SYSTEM_ID_HERE]/systemusers

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::SystemsApi.new

id = "id_example" # String | 

content_type = "application/json" # String | 

accept = "application/json" # String | 

opts = { 
  body: JCAPIv1::Systemuserbindingsput.new # Systemuserbindingsput | 
}

begin
  #Update a system's or user's binding
  api_instance.systems_systemusers_binding_put(id, content_type, accept, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemsApi->systems_systemusers_binding_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [default to application/json]
 **accept** | **String**|  | [default to application/json]
 **body** | [**Systemuserbindingsput**](Systemuserbindingsput.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8


