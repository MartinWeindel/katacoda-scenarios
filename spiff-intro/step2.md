This example is an appetizer for some of the more powerful features of `spiff`.

There are three files:

`secret.yaml`{{open}} contains the template for a Kubernetes secret manifest.
Note that it defines `values` and `helpers` as temporary nodes. This means, these nodes are removed from the final document. 

`values.yaml`{{open}} defines the `values` node and contains the values to fill the template.

`helpers.yaml`{{open}} contains a helper lambda function named `secretdata`, to convert all secret values to Base64 using the builtin function `base64(string)` and collect them as map using the `sum` aggregation.

# Run the processing.

To run the processing, call `spiff merge` with the template file `secret.yaml` and the stub files `values.yaml` and `helpers.yaml`:

`spiff merge secret.yaml values.yaml helpers.yaml`{{execute}}
